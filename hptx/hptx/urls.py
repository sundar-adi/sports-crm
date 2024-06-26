from django.conf import settings
from django.conf.urls import include, url
from django.contrib import admin

from wagtailautocomplete.urls.admin import (
    urlpatterns as autocomplete_admin_urls)

from wagtail.admin import urls as wagtailadmin_urls
from wagtail.core import urls as wagtail_urls
from wagtail.documents import urls as wagtaildocs_urls

from payment import views as payment_views
from search import views as search_views

urlpatterns = [
    url(r'^stripe/', include('djstripe.urls', namespace='djstripe')),
    url(r'^django-admin/', admin.site.urls),

    url(r'^admin/autocomplete/', include(autocomplete_admin_urls)),
    url(r'^admin/', include(wagtailadmin_urls)),
    url(r'^documents/', include(wagtaildocs_urls)),
    url(r'^community/', include(('user.urls', 'user'), namespace='user')),
    url(r'^article/', include(
        ('article.urls', 'article'), namespace='article')),

    url(r'^search/$', search_views.search, name='search'),
    url(r'^plans/$', payment_views.PlansView.as_view(), name='plans'),

    # For anything not caught by a more specific rule above, hand over to
    # Wagtail's page serving mechanism. This should be the last pattern in
    # the list:
    url(r'', include(wagtail_urls)),

    # Alternatively, if you want Wagtail pages to be served from a subpath
    # of your site, rather than the site root:
    #    url(r'^pages/', include(wagtail_urls)),
]


if settings.DEBUG:
    from django.conf.urls.static import static
    from django.contrib.staticfiles.urls import staticfiles_urlpatterns

    # Serve static and media files from development server
    urlpatterns += staticfiles_urlpatterns()
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)
