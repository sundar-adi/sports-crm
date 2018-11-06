from django.contrib.auth import views as auth_views
from django.urls import reverse_lazy

from wagtail.admin import forms


class PasswordResetView(auth_views.PasswordResetView):
    template_name = 'user/auth/password_reset/form.html'
    email_template_name = 'user/auth/password_reset/email.txt'
    subject_template_name = (
        'user/auth/password_reset/email_subject.txt')
    form_class = forms.PasswordResetForm
    success_url = reverse_lazy('user:password_reset_done')


class PasswordResetDoneView(auth_views.PasswordResetDoneView):
    template_name = 'user/auth/password_reset/done.html'


class PasswordResetConfirmView(auth_views.PasswordResetConfirmView):
    template_name = 'user/auth/password_reset/confirm.html'
    success_url = reverse_lazy('user:password_reset_complete')


class PasswordResetCompleteView(auth_views.PasswordResetCompleteView):
    template_name = 'user/auth/password_reset/complete.html'
