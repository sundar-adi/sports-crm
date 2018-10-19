from django.views.generic import TemplateView

from djstripe.mixins import PaymentsContextMixin


# Create your views here.
class PlansView(PaymentsContextMixin, TemplateView):
    template_name = "payment/plans.html"


class SubscriptionSuccessView(TemplateView):
    template_name = "payment/subscription_success.html"
