import json

from django.contrib.auth import views as auth_views
from django.contrib.auth import authenticate, login
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from django.views.generic import FormView, TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin

from user.forms import SignUpForm
from user.models import User
from article.models import ArticlePage


# Create your views here.
class LoginView(auth_views.LoginView):
    redirect_authenticated_user = True
    template_name = "user/auth/login.html"


class SignupView(FormView):
    form_class = SignUpForm
    success_url = '/plans'
    template_name = "user/auth/signup.html"

    def get_context_data(self, **kwargs):
        context = super(SignupView, self).get_context_data(**kwargs)
        context['plan'] = self.request.GET.get('plan', 'silver')
        return context

    def form_valid(self, form):
        user = form.save()
        raw_password = form.cleaned_data.get('password1')
        user = authenticate(username=user.username, password=raw_password)
        login(self.request, user)
        return super().form_valid(form)

    def put(self, request, *args, **kwargs):
        data = json.loads(request.body.decode("utf-8"))
        form = self.form_class(data)
        if form.is_valid():
            return JsonResponse({})
        else:
            return JsonResponse(form.errors, status=400)


class LogoutView(auth_views.LogoutView):
    next_page = "/"


class ProfileEditView(LoginRequiredMixin, TemplateView):
    template_name = 'user/edit_profile.html'

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
                authors=user)
        })
        return context
