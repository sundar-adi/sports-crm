from django import template

register = template.Library()


@register.filter
def first_paragraph_value(article):
    for block in article.body:
        if(block.block_type == "paragraph"):
            return block.value
    return ""


@register.filter
def soundcloud_block(article):
    for block in article.body:
        if(block.block_type == "embed" and "soundcloud" in block.value.url):
            return block.value
    return ""


@register.filter
def youtube_block(article):
    for block in article.body:
        if(block.block_type == "embed" and "youtube" in block.value.url):
            return block.value
    return ""


@register.filter
def has_media(article):
    if(article.featured_image):
        return True

    for block in article.body:
        if block.block_type == "embed" and \
                article.specific.get_verbose_name() in [
                    'Podcast episode page', 'Video page']:
            return True
    return False


@register.inclusion_tag('article/share.html', takes_context=True)
def share(context, article):
    context['article'] = article
    context['article_url'] = article.full_url
    return context


@register.simple_tag
def get_last_podcast(podcast):
    last = podcast.get_children().live().order_by(
        '-first_published_at').first()
    return last
