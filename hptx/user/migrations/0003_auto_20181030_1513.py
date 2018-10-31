# Generated by Django 2.0.9 on 2018-10-30 15:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailimages', '0021_image_file_hash'),
        ('user', '0002_profile_photo'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='profile',
            name='photo',
        ),
        migrations.RemoveField(
            model_name='profile',
            name='user',
        ),
        migrations.AddField(
            model_name='user',
            name='bio',
            field=models.TextField(blank=True, verbose_name='bio'),
        ),
        migrations.AddField(
            model_name='user',
            name='birthday',
            field=models.DateField(blank=True, null=True, verbose_name='birthday'),
        ),
        migrations.AddField(
            model_name='user',
            name='city',
            field=models.CharField(blank=True, max_length=255, verbose_name='city'),
        ),
        migrations.AddField(
            model_name='user',
            name='facebook_handler',
            field=models.CharField(blank=True, max_length=255, verbose_name='facebook handler'),
        ),
        migrations.AddField(
            model_name='user',
            name='instagram_handler',
            field=models.CharField(blank=True, max_length=255, verbose_name='instagram handler'),
        ),
        migrations.AddField(
            model_name='user',
            name='photo',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='photo_of', to='wagtailimages.Image', verbose_name='Photo'),
        ),
        migrations.AddField(
            model_name='user',
            name='rating',
            field=models.DecimalField(decimal_places=1, default=0, max_digits=2),
        ),
        migrations.AddField(
            model_name='user',
            name='state',
            field=models.CharField(blank=True, max_length=255, verbose_name='state'),
        ),
        migrations.AddField(
            model_name='user',
            name='twitter_handler',
            field=models.CharField(blank=True, max_length=255, verbose_name='twitter handler'),
        ),
        migrations.DeleteModel(
            name='Profile',
        ),
    ]
