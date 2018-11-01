from django.contrib.auth import views as auth_views

from djstripe.mixins import PaymentsContextMixin

from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import get_object_or_404, redirect
from django.urls import reverse_lazy, reverse
from django.views.generic import TemplateView
from django.views.generic.edit import UpdateView

from article.models import ArticlePage

from user.forms import ProfileEditForm
from user.models import User


# Create your views here.
class LoginView(auth_views.LoginView):
    redirect_authenticated_user = True
    template_name = "user/auth/login.html"


class SignupView(PaymentsContextMixin, TemplateView):
    template_name = "user/auth/signup.html"

    def dispatch(self, request, *args, **kwargs):
        if self.request.user.is_authenticated:
            return redirect(
                reverse('user:profile_edit_view')
            )
        return super(SignupView, self).dispatch(request, *args, **kwargs)

    def get_context_data(self, **kwargs):
        context = super(SignupView, self).get_context_data(**kwargs)
        context['plan'] = self.request.GET.get('plan', 'silver')
        return context


class LogoutView(auth_views.LogoutView):
    next_page = "/"


class ProfileEditView(LoginRequiredMixin, UpdateView):
    template_name = 'user/edit_profile.html'
    form_class = ProfileEditForm
    success_url = reverse_lazy('user:profile_edit_view')

    def get_object(self, queryset=None):
        return self.request.user

    def get_context_data(self, *args, **kwargs):
        user = self.request.user
        context = super().get_context_data(*args, **kwargs)
        context.update({
            'user': user
        })
        return context


class ProfileView(TemplateView):
    template_name = 'user/public_profile.html'

    def get_context_data(self, *args, **kwargs):
        user = get_object_or_404(User, username=self.kwargs.get('username'))

        context = super().get_context_data(*args, **kwargs)
        context.update({
            'user': user,
            'articles': ArticlePage.objects.live().filter(
                authors=user).order_by(
                    '-publication_date', '-first_published_at')
        })
        return context
