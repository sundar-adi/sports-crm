import stripe
import traceback

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


def create_stripe_customer(stripe_token, email, **extra_data):
    stripe.api_key = getattr(djsettings, 'STRIPE_SECRET_KEY', None)
    try:
        return (True, stripe.Customer.create(
            description='Customer for {0}'.format(email),
            source=stripe_token,
            email=email,
            **extra_data
        ))
    except Exception as e:
        return (False, store_stripe_error(e))


def create_stripe_subscription(customer_id, plan_id, **params):
    stripe.api_key = getattr(djsettings, 'STRIPE_SECRET_KEY', None)
    params = {}

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
