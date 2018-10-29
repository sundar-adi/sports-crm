from django import template

register = template.Library()


@register.filter
def first_paragraph_value(article):
    for block in article.body:
        if(block.block_type == "paragraph"):
            return block.value
    return ""


@register.filter
def soundcloud_link(article):
    for block in article.body:
        print(block.block_type)
        if(block.block_type == "embed" and "soundcloud" in block.value.url):
            return block.value.url
    return ""


@register.filter
def youtube_link(article):
    for block in article.body:
        print(block.block_type)
        if(block.block_type == "embed" and "youtube" in block.value.url):
            return block.value.url
    return ""


@register.filter
def has_media(article):
    if(article.featured_image):
        return True

    for block in article.body:
        if block.block_type == "embed" and \
                article.specific.get_verbose_name() in [
                    'Podcast page', 'Video page']:
            return True
    return False
