from django import forms

from django.utils.translation import ugettext_lazy as _

from wagtail.search import index as search_index
from wagtail.images.models import Image
from wagtail.images.widgets import AdminImageChooser
from wagtail.users.forms import (
    UserEditForm as WagtailUserEditForm,
    UserCreationForm as WagtailUserCreationForm)

from user.models import User


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


class ProfileEditForm(forms.ModelForm):

    image = forms.ImageField(required=False, label=_('image'))

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'birthday', 'email',
                  'city', 'state', 'twitter_handler', 'bio', 'image')

    def save(self, commit=True):
        instance = super().save(commit)
        image = self.cleaned_data.get('image')
        if commit is True and image:
            photo = instance.photo
            if photo:
                photo.file = image
                photo.file_size = photo.file.size
                photo.file.seek(0)
                photo._set_file_hash(photo.file.read())
                photo.file.seek(0)
                photo.save()
                photo.renditions.all().delete()
                search_index.insert_or_update_object(photo)
            else:
                instance.photo = Image.objects.create(
                    file_size=image.size,
                    title=image.name,
                    file=image
                )
                instance.save()
                search_index.insert_or_update_object(instance.photo)
        return instance

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['first_name'].required = True
        self.fields['last_name'].required = True
