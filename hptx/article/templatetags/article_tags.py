from django import template

register = template.Library()


@register.inclusion_tag('article/share.html', takes_context=True)
def share(context, article):
    context['article'] = article
    context['article_url'] = article.full_url
    return context
