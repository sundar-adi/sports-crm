from django.conf.urls import url

from payment.rest_views import SubscribeView

urlpatterns = [
    url(r'^subscribe/$', SubscribeView.as_view(), name="subscribe"),
]
