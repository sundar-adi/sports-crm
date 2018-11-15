from django.conf.urls import url

from article.views.rest_views import (
    ListMostRecentPageView,
    ListWeekMostPopularPageView
)


urlpatterns = [
    url(
        'list_most_recent',
        ListMostRecentPageView.as_view(),
        name="list_most_recent"),
    url(
        'list_week_most_popular',
        ListWeekMostPopularPageView.as_view(),
        name="list_week_most_popular"),
]
