# Generated by Django 2.0.9 on 2018-10-31 11:56

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailcore', '0040_page_draft_title'),
        ('wagtailredirects', '0006_redirect_increase_max_length'),
        ('wagtailforms', '0003_capitalizeverbose'),
        ('article', '0006_podcastepisodepage_podcastpage_videopage'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='podcastepisodepage',
            name='articlepage_ptr',
        ),
        migrations.RemoveField(
            model_name='podcastpage',
            name='articlepage_ptr',
        ),
        migrations.DeleteModel(
            name='PodcastEpisodePage',
        ),
        migrations.DeleteModel(
            name='PodcastPage',
        ),
    ]
