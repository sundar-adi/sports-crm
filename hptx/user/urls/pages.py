from django.conf.urls import url, include

from user.views.pages import (
    LoginView, SignupView, LogoutView, ProfileView,
    ProfileEditView
)

urlpatterns = [
    url(r'^signup/$', SignupView.as_view(), name="signup"),
    url(r'^login/$', LoginView.as_view(), name="login"),
    url(r'^logout/$', LogoutView.as_view(), name="logout"),
    url(
        r'^my-profile/$',
        ProfileEditView.as_view(),
        name='profile_edit_view'
    ),
    url(
        r'^(?P<username>[\w.@+-]+)/$',
        ProfileView.as_view(),
        name='profile_view'
    ),
    url(
        r'^rest/', include(
            ('user.urls.rest_urls', 'user_rest'), namespace="rest")
    ),
]
