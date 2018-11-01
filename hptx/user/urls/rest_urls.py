from django.conf.urls import url

from user.views.rest_views import ValidateUserView, SubscribeUserView

urlpatterns = [
    url(r'^validate/$', ValidateUserView.as_view(), name="validate"),
    url(r'^subscribe/$', SubscribeUserView.as_view(), name="subscribe"),
]
