from django.conf import settings
from django.contrib.auth.models import AbstractUser
from django.db import models
from django.utils.translation import ugettext_lazy as _

from base.models import SimpleModel


class User(AbstractUser):

    autocomplete_search_field = 'username'

    def autocomplete_label(self):
        return self.username


# Create your models here.
class Profile(SimpleModel):
    user = models.OneToOneField(
        verbose_name=_(u'user'),
        to=settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE
    )
    birthday = models.DateField(
        verbose_name=_(u'birthday'),
        blank=True,
        null=True
    )
    city = models.CharField(
        max_length=255,
        verbose_name=_(u'city'),
        blank=True,
        null=True
    )
    state = models.CharField(
        max_length=255,
        verbose_name=_(u'state'),
        blank=True,
        null=True
    )
    bio = models.TextField(
        verbose_name=_(u'bio'),
        blank=True,
    )
    photo = models.ForeignKey(
        'wagtailimages.Image',
        verbose_name=_('Photo'),
        related_name='photo_of',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
    )
