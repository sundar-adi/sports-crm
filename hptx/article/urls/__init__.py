from django.conf.urls import url, include


urlpatterns = [
    url(
        r"^rest/",
        include(
            ('article.urls.rest_urls', 'article_rest'),
            namespace="rest"
        )
    )
]
