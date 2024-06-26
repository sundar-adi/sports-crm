# Generated by Django 2.0.9 on 2018-10-31 13:50

from django.db import migrations, models
import django.db.models.deletion
import modelcluster.fields


class Migration(migrations.Migration):

    dependencies = [
        ('article', '0006_podcastepisodepage_podcastpage_videopage'),
        ('home', '0012_homepage_articles'),
    ]

    operations = [
        migrations.CreateModel(
            name='EditorChoice',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(blank=True, editable=False, null=True)),
                ('article', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='article.ArticlePage')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
        migrations.RemoveField(
            model_name='homepage',
            name='articles',
        ),
        migrations.AddField(
            model_name='editorchoice',
            name='page',
            field=modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='editor_choices', to='home.HomePage'),
        ),
    ]
