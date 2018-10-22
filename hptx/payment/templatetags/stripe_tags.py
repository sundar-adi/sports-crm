from django import template

register = template.Library()


@register.filter
def stripe_amount(val):
    return int(val * 100)
