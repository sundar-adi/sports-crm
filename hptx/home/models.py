from django.db import models
from django.utils.text import mark_safe
from django.utils.translation import ugettext_lazy as _

from wagtail.admin.edit_handlers import (
    FieldPanel, MultiFieldPanel, InlinePanel)
from wagtail.core.models import Page, Orderable
from wagtail.images.edit_handlers import ImageChooserPanel

from modelcluster.fields import ParentalKey
from wagtailmodelchooser import register_model_chooser
from taggit.models import TagBase
from wagtailmodelchooser.edit_handlers import ModelChooserPanel


@register_model_chooser
class Tag(Orderable, TagBase):
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


class TagLinkTopMenu(Orderable, models.Model):
    page = ParentalKey(
        'home.HomePage',
        on_delete=models.CASCADE,
        related_name='top_menu',
    )
    name = models.CharField(
        max_length=255,
        verbose_name=_('name'),
    )
    image = models.ForeignKey(
        'wagtailimages.Image',
        verbose_name=_('image'),
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
    )
    tag = models.ForeignKey(
        'home.Tag',
        on_delete=models.CASCADE
    )

    panels = [
        FieldPanel('name'),
        ImageChooserPanel('image'),
        ModelChooserPanel('tag'),
    ]


class TagLinkLeftMenu(Orderable, models.Model):
    page = ParentalKey(
        'home.HomePage',
        on_delete=models.CASCADE,
        related_name='left_menu',
    )
    name = models.CharField(
        max_length=255,
        verbose_name=_('name'),
    )
    image = models.ForeignKey(
        'wagtailimages.Image',
        verbose_name=_('image'),
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
    )
    tag = models.ForeignKey(
        'home.Tag',
        on_delete=models.CASCADE
    )

    panels = [
        FieldPanel('name'),
        ImageChooserPanel('image'),
        ModelChooserPanel('tag'),
    ]


class TagLinkLeftSubMenu(Orderable, models.Model):
    page = ParentalKey(
        'home.HomePage',
        on_delete=models.CASCADE,
        related_name='left_submenu',
    )
    name = models.CharField(
        max_length=255,
        verbose_name=_('name'),
    )
    icon = models.CharField(
        max_length=255,
        verbose_name=_('icon'),
        help_text=mark_safe(
            'You should use icon\'s names from Font Awesome. You can check '
            'the list here: <a href="https://fontawesome.com/icons?d=gallery" '
            'target="_blank">Icon Gallery</a>.'),
    )
    tag = models.ForeignKey(
        'home.Tag',
        on_delete=models.CASCADE
    )

    panels = [
        FieldPanel('name'),
        FieldPanel('icon'),
        ModelChooserPanel('tag'),
    ]


class HomePage(Page):

    twitter_handler = models.CharField(
        max_length=255,
        verbose_name=_('twitter handler'),
        blank=True,
    )

    content_panels = Page.content_panels + [
        InlinePanel('top_menu', label='Top menu'),
        InlinePanel('left_menu', label='Left menu'),
        InlinePanel('left_submenu', label='Left submenu'),
        FieldPanel('twitter_handler'),
    ]
