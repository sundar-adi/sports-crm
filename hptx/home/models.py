from django.db import models
from django.utils.translation import ugettext_lazy as _

from wagtail.admin.edit_handlers import FieldPanel, MultiFieldPanel
from wagtail.core.fields import RichTextField
from wagtail.core.models import Page
from wagtail.images.edit_handlers import ImageChooserPanel

from taggit.models import TagBase


class Tag(TagBase):
    description = models.TextField(
        verbose_name=_('Description'),
    )
    primary_color = models.CharField(
        verbose_name=_('Primary color'),
        max_length=7,
        blank=True,
        null=True
    )
    secondary_color = models.CharField(
        verbose_name=_('Secondary color'),
        max_length=7,
        blank=True,
        null=True
    )
    main_image = models.ForeignKey(
        'wagtailimages.Image',
        verbose_name=_('Main Image'),
        related_name='main_image_on',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
    )
    secondary_image = models.ForeignKey(
        'wagtailimages.Image',
        verbose_name=_('Secondary Image'),
        related_name='secondary_image_on',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
    )
    hp_logo = models.ForeignKey(
        'wagtailimages.Image',
        verbose_name=_('HP Logo'),
        related_name='hp_logo_on',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
    )
    seo_title = models.CharField(
        verbose_name=_('Title (SEO)'),
        max_length=68,
        blank=True, null=True
    )
    seo_description = models.CharField(
        verbose_name=_('Description (SEO)'),
        max_length=155,
        blank=True, null=True
    )
    seo_main_image_alt = models.CharField(
        verbose_name=_('Main Image Alt (SEO)'),
        max_length=68,
        blank=True, null=True
    )
    seo_secondary_image_alt = models.CharField(
        verbose_name=_('Secondary Image Alt (SEO)'),
        max_length=68,
        blank=True, null=True
    )
    seo_description = models.CharField(
        verbose_name=_('Description (SEO)'),
        max_length=155,
        blank=True,
        null=True
    )

    panels = [
        FieldPanel('description'),
        MultiFieldPanel([
            FieldPanel('primary_color'),
            FieldPanel('secondary_color'),
        ], heading=_('Colors')),
        MultiFieldPanel([
            ImageChooserPanel('main_image'),
            ImageChooserPanel('secondary_image'),
            ImageChooserPanel('hp_logo'),
        ], heading=_('Images')),
        MultiFieldPanel([
            FieldPanel('seo_title'),
            FieldPanel('seo_description'),
            FieldPanel('seo_main_image_alt'),
            FieldPanel('seo_secondary_image_alt'),
            FieldPanel('seo_description'),
        ], heading=_('SEO')),
    ]


class HomePage(Page):

    body = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('body', classname="full"),
    ]
