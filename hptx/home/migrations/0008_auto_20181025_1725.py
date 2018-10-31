# Generated by Django 2.0.9 on 2018-10-25 17:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0007_auto_20181024_1659'),
    ]

    operations = [
        migrations.AddField(
            model_name='homepage',
            name='facebook_link',
            field=models.URLField(blank=True, verbose_name='facebook_link'),
        ),
        migrations.AddField(
            model_name='homepage',
            name='instagram_link',
            field=models.URLField(blank=True, verbose_name='instagram_link'),
        ),
        migrations.AddField(
            model_name='homepage',
            name='twitter_link',
            field=models.URLField(blank=True, verbose_name='twitter_link'),
        ),
        migrations.AlterField(
            model_name='homepage',
            name='twitter_handler',
            field=models.CharField(blank=True, help_text='For rendering the twitter timeline', max_length=255, verbose_name='twitter handler'),
        ),
    ]