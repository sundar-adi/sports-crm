from django.db import models
from django.utils.translation import ugettext_lazy as _


# Create your models here.
class StripeApiError(models.Model):
    traceback = models.TextField(
        verbose_name=_(u'traceback'),
        null=True
    )
    type = models.CharField(
        verbose_name=_(u'type'),
        max_length=255
    )
    status = models.CharField(
        verbose_name=_(u'status'),
        max_length=255,
        null=True
    )
    message = models.CharField(
        verbose_name=_(u'message'),
        max_length=255,
        null=True
    )
    code = models.CharField(
        verbose_name=_(u'code'),
        max_length=255,
        null=True
    )
    param = models.CharField(
        verbose_name=_(u'param'),
        max_length=255,
        null=True
    )
    created = models.DateTimeField(
        verbose_name=_(u'created'),
        auto_now_add=True
    )

    def __str__(self):
        return '{0}'.format(self.type)

    class Meta:
        verbose_name = _(u'Stripe API error')
        verbose_name_plural = _(u'Stripe API errors')
