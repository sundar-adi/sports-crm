# Generated by Django 2.0.9 on 2018-10-19 07:40

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailredirects', '0006_redirect_increase_max_length'),
        ('wagtailforms', '0003_capitalizeverbose'),
        ('wagtailcore', '0040_page_draft_title'),
        ('article', '0003_auto_20181018_1846'),
    ]

    operations = [
        migrations.CreateModel(
            name='ArticleTagIndexPage',
            fields=[
                ('page_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='wagtailcore.Page')),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.RemoveField(
            model_name='articleindexpage',
            name='page_ptr',
        ),
        migrations.DeleteModel(
            name='ArticleIndexPage',
        ),
    ]