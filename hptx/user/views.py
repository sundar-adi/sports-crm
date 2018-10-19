from django.shortcuts import get_object_or_404
from django.views.generic import TemplateView

from user.models import User


class ProfileView(TemplateView):
    template_name = 'user/public_profile.html'

    def get_context_data(self, *args, **kwargs):
        user = get_object_or_404(User, username=self.kwargs.get('username'))

        context = super().get_context_data(*args, **kwargs)
        context.update({
            'user': user
        })
        return context
