from django.conf.urls import url

from user.views import password_reset

urlpatterns = [
    url(
        r'^$',
        password_reset.PasswordResetView.as_view(),
        name='password_reset'
    ),
    url(
        r'^done/$',
        password_reset.PasswordResetDoneView.as_view(),
        name='password_reset_done'
    ),
    url(
        (r'^confirm/(?P<uidb64>[0-9A-Za-z_\-]+)/'
         r'(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$'),
        password_reset.PasswordResetConfirmView.as_view(),
        name='password_reset_confirm',
    ),
    url(
        r'^complete/$',
        password_reset.PasswordResetCompleteView.as_view(),
        name='password_reset_complete'
    ),
]
