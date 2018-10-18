from django.db import models
from django.utils.translation import ugettext_lazy as _


class SimpleModel(models.Model):
    created = models.DateTimeField(
        _(u'Created'),
        auto_now_add=True
    )
    modified = models.DateTimeField(
        _(u'Modified'),
        auto_now=True
    )

    class Meta:
        abstract = True
        ordering = ('-created', )
