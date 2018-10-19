from django.views.generic import TemplateView

from djstripe.mixins import PaymentsContextMixin


# Create your views here.
class PlansView(PaymentsContextMixin, TemplateView):
    template_name = "search/plans.html"
