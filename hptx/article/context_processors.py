# -*- coding: utf-8 -*-
from home.models import GlobalSettings


def show_paywall(request):

    return {
        'SHOW_PAYWALL': (
            GlobalSettings.for_site(request.site).enable_paywall and
            request.user.is_anonymous
        )
    }
