from django.conf import settings
from django.db import models
from django.utils.translation import ugettext_lazy as _

from wagtail.admin.edit_handlers import (
    FieldPanel, StreamFieldPanel, MultiFieldPanel)
from wagtail.core import blocks
from wagtail.core.fields import RichTextField
from wagtail.core.fields import StreamField
from wagtail.core.models import Page
from wagtail.images.blocks import ImageChooserBlock
from wagtail.embeds.blocks import EmbedBlock

from modelcluster.contrib.taggit import ClusterTaggableManager
from modelcluster.fields import ParentalKey, ParentalManyToManyField
from taggit.models import TaggedItemBase
from wagtailautocomplete.edit_handlers import AutocompletePanel

from home.models import Tag


class ArticleTag(TaggedItemBase):
    tag = models.ForeignKey(
        Tag,
        related_name="%(app_label)s_%(class)s_items",
        on_delete=models.CASCADE)
    content_object = ParentalKey(
        'article.ArticlePage',
        on_delete=models.CASCADE,
        related_name='tagged_items')


class ArticleIndexPage(Page):
    intro = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('intro', classname="full")
    ]


class ArticlePage(Page):
    tags = ClusterTaggableManager(through=ArticleTag, blank=True)

    authors = ParentalManyToManyField(
        to=settings.AUTH_USER_MODEL,
        verbose_name=_('authors'),
        related_name='author_on',
        blank=True,
    )
    editors = ParentalManyToManyField(
        to=settings.AUTH_USER_MODEL,
        verbose_name=_('editors'),
        related_name='editor_on',
        blank=True,
    )
    contributors = ParentalManyToManyField(
        to=settings.AUTH_USER_MODEL,
        verbose_name=_('contributors'),
        related_name='contributor_on',
        blank=True,
    )
    publication_date = models.DateField(
        verbose_name='publication date',
    )
    body = StreamField([
        ('heading', blocks.CharBlock(classname="full title")),
        ('paragraph', blocks.RichTextBlock()),
        ('image', ImageChooserBlock()),
        ('embed', EmbedBlock()),
    ])

    content_panels = Page.content_panels + [
        MultiFieldPanel([
            FieldPanel('publication_date'),
            FieldPanel('tags'),
        ], heading=_('Article metadata')),
        MultiFieldPanel([
            AutocompletePanel(
                'authors', page_type=settings.AUTH_USER_MODEL,
                is_single=False),
            AutocompletePanel(
                'editors', page_type=settings.AUTH_USER_MODEL,
                is_single=False),
            AutocompletePanel(
                'contributors', page_type=settings.AUTH_USER_MODEL,
                is_single=False),
        ], heading=_('People')),
        StreamFieldPanel('body'),
    ]
