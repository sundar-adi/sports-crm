from django.contrib.auth.models import AbstractUser
from django.db import models
from django.utils.translation import ugettext_lazy as _

from user.constants import PLAN_CHOICES


class User(AbstractUser):

    autocomplete_search_field = 'username'

    birthday = models.DateField(
        verbose_name=_(u'Birthday'),
        blank=True,
        null=True
    )
    address = models.CharField(
        max_length=255,
        verbose_name=_(u'City'),
        blank=True,
    )
    city = models.CharField(
        max_length=255,
        verbose_name=_(u'City'),
        blank=True,
    )
    state = models.CharField(
        max_length=255,
        verbose_name=_(u'State'),
        blank=True,
    )
    zip_code = models.CharField(
        max_length=5,
        verbose_name=_(u'zip code'),
        blank=True,
    )
    country = models.CharField(
        max_length=255,
        verbose_name=_(u'zip code'),
        blank=True,
    )
    bio = models.TextField(
        verbose_name=_(u'Bio'),
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
    twitter_handler = models.CharField(
        max_length=255,
        verbose_name=_('Twitter handler'),
        blank=True,
    )
    instagram_handler = models.CharField(
        max_length=255,
        verbose_name=_('Instagram handler'),
        blank=True,
    )
    facebook_handler = models.CharField(
        max_length=255,
        verbose_name=_('Facebook handler'),
        blank=True,
    )
    rating = models.DecimalField(
        verbose_name=_('Rating'),
        max_digits=2,
        decimal_places=1,
        default=0,
    )
    is_talent = models.BooleanField(
        verbose_name=_('Is talent'),
        default=False,
    )
    newsletter = models.BooleanField(
        verbose_name=_('Newsletter subscribed'),
        default=False,
    )
    plan = models.CharField(
        verbose_name=_('Current plan'),
        max_length=8,
        choices=PLAN_CHOICES,
        blank=True,
        null=True
    )

    def autocomplete_label(self):
        return self.username
