def wagtail_home_page(request):
    """
    Add static-related context variables to the context.
    """
    if hasattr(request, 'site') and hasattr(request.site, 'root_page') \
            and hasattr(request.site.root_page, 'homepage'):
        return {'HOME_PAGE': request.site.root_page.homepage}
    return {}
