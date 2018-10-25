# -*- coding: utf-8 -*-
from home.models import HomePage


def homepage(request):
    site = request.site
    root = site and site.root_page
    if not root:
        homepage = None
    else:
        try:
            homepage = root.homepage
        except HomePage.DoesNotExist:
            homepage = None
    return {
        'homepage': homepage
    }
