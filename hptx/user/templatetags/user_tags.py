import datetime

from django import template
from django.utils import timezone

register = template.Library()


@register.inclusion_tag('user/rating.html')
def rating(rating):
    rating = rating or 0
    stars = []
    for i in range(5):
        if rating > i and rating < (i + 1):
            stars.append('half')
        elif rating > i:
            stars.append('full')
        else:
            stars.append('empty')
    return {
        'stars': stars
    }


@register.inclusion_tag('user/talent_of_the_week.html', takes_context=True)
def talent_of_the_week(context):
    homepage = context.get('homepage', None)
    talent = homepage and homepage.talent_of_the_week
    now = timezone.now()
    today = datetime.date(now.year, now.month, now.day)
    week_from = today - datetime.timedelta(days=today.weekday())
    week_to = week_from + datetime.timedelta(days=6)
    if talent:
        last_article = talent.author_on.live().order_by(
            '-publication_date').first()
    else:
        last_article = None
    return {
        'talent': talent,
        'last_article': last_article,
        'week_from': week_from,
        'week_to': week_to,
    }
