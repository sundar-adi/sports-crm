# Generated by Django 2.0.9 on 2018-10-18 18:04

from django.db import migrations, models
import django.db.models.deletion
import wagtail.core.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('wagtailcore', '0040_page_draft_title'),
        ('wagtailimages', '0021_image_file_hash'),
    ]

    operations = [
        migrations.CreateModel(
            name='HomePage',
            fields=[
                ('page_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='wagtailcore.Page')),
                ('body', wagtail.core.fields.RichTextField(blank=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
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
                ('hp_logo', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='hp_logo_on', to='wagtailimages.Image', verbose_name='HP Logo')),
                ('main_image', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='main_image_on', to='wagtailimages.Image', verbose_name='Main Image')),
                ('secondary_image', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='secondary_image_on', to='wagtailimages.Image', verbose_name='Secondary Image')),
            ],
            options={
                'abstract': False,
            },
        ),
    ]
