from django.conf.urls import url

from user.views import ProfileView


urlpatterns = [
    url(
        r'^(?P<username>[\w.@+-]+)/$',
        ProfileView.as_view(),
        name='profile_view'
    ),
]
