from datetime import timedelta

from django.contrib.contenttypes.models import ContentType
from django.core.paginator import Paginator, InvalidPage
from django.db import models
from django.utils import timezone

from hitcount.models import HitCount

from article.models import ArticlePage, PodcastEpisodePage, VideoPage


DEFAULT_PAGE_SIZE = 10


def get_paginated_result(qs, page=None, page_size=None):
    page = 1 if page is None else page
    page_size = DEFAULT_PAGE_SIZE if page_size is None else page_size

    try:
        paginator = Paginator(qs, page_size).page(page)
        return paginator.has_next(), paginator.object_list
    except InvalidPage:
        return False, []


def list_most_recent(page=None, page_size=None):
    objects = ArticlePage.objects.live().order_by(
            '-publication_date')
    return get_paginated_result(objects, page, page_size)


def list_week_most_popular(page=None, page_size=None):
    period = timezone.now() - timedelta(days=7)

    try:
        ctypes = ContentType.objects.get_for_models(
            ArticlePage, PodcastEpisodePage, VideoPage).values()
        hit_counts = HitCount.objects.filter(
            content_type__in=ctypes).annotate(
                hit_count=models.Count(
                    'hit', filter=models.Q(hit__created__gte=period))
            ).order_by('hit_count')
        next, results = get_paginated_result(hit_counts, page, page_size)
        return next, [i.content_object for i in results]
    except AttributeError:
        return False, []
