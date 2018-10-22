from django.conf.urls import url

from user.views import (
    LoginView, SignupView, LogoutView, ProfileView
)

urlpatterns = [
    url(r'^signup/$', SignupView.as_view(), name="signup"),
    url(r'^login/$', LoginView.as_view(), name="login"),
    url(r'^logout/$', LogoutView.as_view(), name="logout"),
    url(
        r'^(?P<username>[\w.@+-]+)/$',
        ProfileView.as_view(),
        name='profile_view'
    ),
]
