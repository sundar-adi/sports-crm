from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.utils.translation import ugettext_lazy as _

from wagtail.images.models import Image
from wagtail.images.widgets import AdminImageChooser
from wagtail.users.forms import (
    UserEditForm as WagtailUserEditForm,
    UserCreationForm as WagtailUserCreationForm)


class SignUpForm(UserCreationForm):
    first_name = forms.CharField(max_length=30, required=True)
    last_name = forms.CharField(max_length=30, required=True)
    email = forms.EmailField(max_length=254)

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email',
                  'password1', 'password2', )


class CustomUserEditForm(WagtailUserEditForm):
    birthday = forms.DateField(required=False, label=_('Birthday'))
    city = forms.CharField(required=False, label=_("City"))
    state = forms.CharField(required=False, label=_("State"))
    twitter_handler = forms.CharField(
        required=False, label=_("Twitter handler"))
    facebook_handler = forms.CharField(
        required=False, label=_("Facebook handler"))
    instagram_handler = forms.CharField(
        required=False, label=_("Instagram handler"))
    rating = forms.DecimalField(required=False, label=_("Rating"))
    bio = forms.CharField(required=False, label=_("Bio"),
                          widget=forms.Textarea)
    photo = forms.ModelChoiceField(
        queryset=Image.objects.all(), required=False,
        label=_("Photo"), widget=AdminImageChooser)
    is_talent = forms.BooleanField(required=False, label=_('Is talent'))


class CustomUserCreationForm(WagtailUserCreationForm):
    birthday = forms.DateField(required=False, label=_('Birthday'))
    city = forms.CharField(required=False, label=_("City"))
    state = forms.CharField(required=False, label=_("State"))
    twitter_handler = forms.CharField(
        required=False, label=_("Twitter handler"))
    facebook_handler = forms.CharField(
        required=False, label=_("Facebook handler"))
    instagram_handler = forms.CharField(
        required=False, label=_("Instagram handler"))
    rating = forms.DecimalField(required=False, label=_("Rating"))
    bio = forms.CharField(required=False, label=_("Bio"),
                          widget=forms.Textarea)
    photo = forms.ModelChoiceField(
        queryset=Image.objects.all(), required=False,
        label=_("Photo"), widget=AdminImageChooser)
    is_talent = forms.BooleanField(required=False, label=_('Is talent'))
