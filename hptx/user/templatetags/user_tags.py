from django import template

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
