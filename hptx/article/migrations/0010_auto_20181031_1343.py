# Generated by Django 2.0.9 on 2018-10-31 13:43

from django.conf import settings
from django.db import migrations
import modelcluster.fields


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('article', '0009_podcastepisodepage_podcastindexpage_podcastpage'),
    ]

    operations = [
        migrations.AddField(
            model_name='podcastpage',
            name='authors',
            field=modelcluster.fields.ParentalManyToManyField(blank=True, related_name='podcast_author_on', to=settings.AUTH_USER_MODEL, verbose_name='authors'),
        ),
        migrations.AddField(
            model_name='podcastpage',
            name='contributors',
            field=modelcluster.fields.ParentalManyToManyField(blank=True, related_name='podcast_contributor_on', to=settings.AUTH_USER_MODEL, verbose_name='contributors'),
        ),
        migrations.AddField(
            model_name='podcastpage',
            name='editors',
            field=modelcluster.fields.ParentalManyToManyField(blank=True, related_name='podcast_editor_on', to=settings.AUTH_USER_MODEL, verbose_name='editors'),
        ),
    ]
