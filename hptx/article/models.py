from django.conf import settings
from django.db import models
from django.http import Http404
from django.utils.translation import ugettext_lazy as _

from wagtail.admin.edit_handlers import (
    FieldPanel, StreamFieldPanel, MultiFieldPanel)
from wagtail.core import blocks
from wagtail.core.fields import StreamField
from wagtail.core.models import Page
from wagtail.core.url_routing import RouteResult
from wagtail.embeds.blocks import EmbedBlock
from wagtail.images.blocks import ImageChooserBlock
from wagtail.images.edit_handlers import ImageChooserPanel

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

    featured_image = models.ForeignKey(
        'wagtailimages.Image',
        verbose_name=_('Featured Image'),
        related_name='featured_image_on',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
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
        MultiFieldPanel([
            ImageChooserPanel('featured_image'),
            StreamFieldPanel('body'),
        ], heading=_('Content')),
    ]


class ArticleTagIndexPage(Page):

    def route(self, request, path_components):
        if path_components:
            self.tag_name = path_components[0]
        else:
            self.tag_name = ''
        if self.live:
            return RouteResult(self)
        else:
            raise Http404

    def get_context(self, request):
        articles = ArticlePage.objects.filter(
            tags__name__iexact=self.tag_name).live()

        context = super().get_context(request)
        context['articles'] = articles
        try:
            context['tag'] = Tag.objects.get(name__iexact=self.tag_name)
        except Tag.DoesNotExist:
            pass
        return context
