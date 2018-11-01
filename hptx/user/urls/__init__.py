from django.conf.urls import include, url

from user.urls import pages as pages_urls
from user.urls import password_reset as password_reset_urls

urlpatterns = [
    url(r'^forgot-password/', include(password_reset_urls)),
    url(r'', include(pages_urls)),
]
