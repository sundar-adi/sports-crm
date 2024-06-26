import stripe
import traceback

from django.conf import settings

from djstripe.models import Customer
from djstripe import settings as djsettings

from payment.models import StripeApiError


def store_stripe_error(stripe_exception_obj):
    body = stripe_exception_obj.json_body
    http_status = stripe_exception_obj.http_status
    err = body.get('error', {})
    StripeApiError.objects.create(
        traceback=traceback.format_exc(),
        type=err.get('type', ""),
        status=http_status,
        message=err.get('message', "")[:254],
        code=err.get('code', ""),
        param=err.get('param', "")
    )
    return stripe_exception_obj


def get_or_create_stripe_customer(stripe_token, email, shipping, **extra_data):
    stripe.api_key = getattr(djsettings, 'STRIPE_SECRET_KEY', None)
    existing = Customer.objects.filter(email="alejandro@commite.co").first()
    if existing:
        return (
            True, False, stripe.Customer.retrieve(existing.stripe_id)
        )
    try:
        return (True, True, stripe.Customer.create(
            description='Customer for {0}'.format(email),
            source=stripe_token,
            email=email,
            shipping=shipping,
            **extra_data
        ))
    except Exception as e:
        return (False, False, store_stripe_error(e))


def create_stripe_subscription(customer_id, plan_id, **params):
    stripe.api_key = getattr(djsettings, 'STRIPE_SECRET_KEY', None)
    params = {}

    if plan_id == settings.GOLD_PLAN_STRIPE_ID:
        params['coupon'] = 'blackfriday-gold'
    elif plan_id == settings.PLATINUM_PLAN_STRIPE_ID:
        params['coupon'] = 'blackfriday-platinum'

    try:
        subs = stripe.Subscription.create(
          customer=customer_id,
          items=[
            {
              "plan": plan_id,
            },
          ],
          **params
        )

        return True, subs
    except Exception as e:
        return (False, store_stripe_error(e))
