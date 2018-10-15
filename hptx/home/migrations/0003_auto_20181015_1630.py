# Generated by Django 2.0.9 on 2018-10-15 16:30

from django.db import migrations, models
import django.db.models.deletion
import modelcluster.contrib.taggit
import modelcluster.fields


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailcore', '0040_page_draft_title'),
        ('home', '0002_create_homepage'),
    ]

    operations = [
        migrations.CreateModel(
            name='Article',
            fields=[
                ('page_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='wagtailcore.Page')),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='ArticleTag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content_object', modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='tagged_items', to='home.Article')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Tag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, unique=True, verbose_name='Name')),
                ('slug', models.SlugField(max_length=100, unique=True, verbose_name='Slug')),
                ('description', models.TextField(verbose_name='Description')),
                ('primary_color', models.CharField(blank=True, max_length=7, null=True, verbose_name='Primary color')),
                ('secondary_color', models.CharField(blank=True, max_length=7, null=True, verbose_name='Secondary color')),
                ('seo_title', models.CharField(blank=True, max_length=68, null=True, verbose_name='Title (SEO)')),
                ('seo_main_image_alt', models.CharField(blank=True, max_length=68, null=True, verbose_name='Secondary Image Alt (SEO)')),
                ('seo_description', models.CharField(blank=True, max_length=155, null=True, verbose_name='Description (SEO)')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.AddField(
            model_name='articletag',
            name='tag',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='home_articletag_items', to='home.Tag'),
        ),
        migrations.AddField(
            model_name='article',
            name='tags',
            field=modelcluster.contrib.taggit.ClusterTaggableManager(blank=True, help_text='A comma-separated list of tags.', through='home.ArticleTag', to='home.Tag', verbose_name='Tags'),
        ),
    ]
