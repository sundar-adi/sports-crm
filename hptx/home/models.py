from django.db import models
from django.utils.translation import ugettext_lazy as _

from wagtail.admin.edit_handlers import FieldPanel
from wagtail.core.fields import RichTextField
from wagtail.core.models import Page
from wagtail.images.models import Image

from modelcluster.contrib.taggit import ClusterTaggableManager
from modelcluster.fields import ParentalKey
from taggit.models import TaggedItemBase, TagBase


class Tag(TagBase):
    description = models.TextField(
        verbose_name=_(u'Description'),
    )
    primary_color = models.CharField(
        verbose_name=_(u'Primary color'),
        max_length=7,
        blank=True,
        null=True
    )
    secondary_color = models.CharField(
        verbose_name=_(u'Secondary color'),
        max_length=7,
        blank=True,
        null=True
    )
    main_image = Image(
        _(u'Main Image'),
    )
    secondary_image = Image(
        _(u'Main Image'),
    )
    hp_logo = Image(
        _(u'HP Logo'),
    )
    seo_title = models.CharField(
        verbose_name=_(u'Title (SEO)'),
        max_length=68,
        blank=True, null=True
    )
    seo_description = models.CharField(
        verbose_name=_(u'Description (SEO)'),
        max_length=155,
        blank=True, null=True
    )
    seo_main_image_alt = models.CharField(
        verbose_name=_(u'Main Image Alt (SEO)'),
        max_length=68,
        blank=True, null=True
    )
    seo_main_image_alt = models.CharField(
        verbose_name=_(u'Secondary Image Alt (SEO)'),
        max_length=68,
        blank=True, null=True
    )
    seo_description = models.CharField(
        verbose_name=_(u'Description (SEO)'),
        max_length=155,
        blank=True,
        null=True
    )


class ArticleTag(TaggedItemBase):
    tag = models.ForeignKey(Tag,
                            related_name="%(app_label)s_%(class)s_items",
                            on_delete=models.CASCADE)
    content_object = ParentalKey(
        'home.Article',
        on_delete=models.CASCADE,
        related_name='tagged_items')


class Article(Page):
    tags = ClusterTaggableManager(through=ArticleTag, blank=True)

    promote_panels = Page.promote_panels + [
        FieldPanel('tags'),
    ]


class HomePage(Page):

    body = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('body', classname="full"),
    ]
