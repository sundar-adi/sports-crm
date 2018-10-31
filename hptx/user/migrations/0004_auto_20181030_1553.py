# Generated by Django 2.0.9 on 2018-10-30 15:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0003_auto_20181030_1513'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='is_talent',
            field=models.BooleanField(default=False, verbose_name='Is talent'),
        ),
        migrations.AlterField(
            model_name='user',
            name='bio',
            field=models.TextField(blank=True, verbose_name='Bio'),
        ),
        migrations.AlterField(
            model_name='user',
            name='birthday',
            field=models.DateField(blank=True, null=True, verbose_name='Birthday'),
        ),
        migrations.AlterField(
            model_name='user',
            name='city',
            field=models.CharField(blank=True, max_length=255, verbose_name='City'),
        ),
        migrations.AlterField(
            model_name='user',
            name='facebook_handler',
            field=models.CharField(blank=True, max_length=255, verbose_name='Facebook handler'),
        ),
        migrations.AlterField(
            model_name='user',
            name='instagram_handler',
            field=models.CharField(blank=True, max_length=255, verbose_name='Instagram handler'),
        ),
        migrations.AlterField(
            model_name='user',
            name='rating',
            field=models.DecimalField(decimal_places=1, default=0, max_digits=2, verbose_name='Rating'),
        ),
        migrations.AlterField(
            model_name='user',
            name='state',
            field=models.CharField(blank=True, max_length=255, verbose_name='State'),
        ),
        migrations.AlterField(
            model_name='user',
            name='twitter_handler',
            field=models.CharField(blank=True, max_length=255, verbose_name='Twitter handler'),
        ),
    ]