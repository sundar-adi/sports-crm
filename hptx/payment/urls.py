from django.conf.urls import url, include

from payment.views import SubscriptionSuccessView

urlpatterns = [
    url(
        r'^success/',
        SubscriptionSuccessView.as_view(),
        name="subscription_success"),
    url(
        r'^rest/', include(
            ('payment.rest_urls', 'payment_rest'), namespace="rest")
    ),
]
