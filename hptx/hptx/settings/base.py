"""
Django settings for hptx project.

Generated by 'django-admin startproject' using Django 2.0.9.

For more information on this file, see
https://docs.djangoproject.com/en/2.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.0/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os

PROJECT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BASE_DIR = os.path.dirname(PROJECT_DIR)


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.0/howto/deployment/checklist/


# Application definition

INTERNAL_IPS = ['10.0.2.2']

INSTALLED_APPS = [
    'base',
    'search',
    'home',
    'payment',
    'user',

    'wagtail.contrib.modeladmin',
    'wagtail.contrib.forms',
    'wagtail.contrib.redirects',
    'wagtail.contrib.settings',
    'wagtail.embeds',
    'wagtail.sites',
    'wagtail.users',
    'wagtail.snippets',
    'wagtail.documents',
    'wagtail.images',
    'wagtail.search',
    'wagtail.admin',
    'wagtail.core',

    'modelcluster',
    'taggit',
    'wagtailautocomplete',
    'wagtailmodelchooser',

    'djstripe',
    'hitcount',
    'django_social_share',

    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    'article',
    'landing',
]

MIDDLEWARE = [
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'django.middleware.security.SecurityMiddleware',

    'wagtail.core.middleware.SiteMiddleware',
    'wagtail.contrib.redirects.middleware.RedirectMiddleware',
]

ROOT_URLCONF = 'hptx.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            os.path.join(PROJECT_DIR, 'templates'),
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'wagtail.contrib.settings.context_processors.settings',
                'base.context_processors.homepage',
                'article.context_processors.show_paywall',
            ],
        },
    },
]

WSGI_APPLICATION = 'hptx.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.0/ref/settings/#databases

DATABASES = {
    'default': {
        'NAME': 'django_db',
        'USER': 'django',
        'ENGINE': 'django.db.backends.postgresql',
        'PASSWORD': 'django',
        'HOST': '',
        'PORT': '',
    }
}


# Password validation
# https://docs.djangoproject.com/en/2.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': ('django.contrib.auth.password_validation.'
                 'UserAttributeSimilarityValidator'),
    },
    {
        'NAME': ('django.contrib.auth.password_validation.'
                 'MinimumLengthValidator'),
    },
    {
        'NAME': ('django.contrib.auth.password_validation.'
                 'CommonPasswordValidator'),
    },
    {
        'NAME': ('django.contrib.auth.password_validation.'
                 'NumericPasswordValidator'),
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.0/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.0/howto/static-files/

STATICFILES_FINDERS = [
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
]

STATICFILES_DIRS = [
    os.path.join(PROJECT_DIR, 'static'),
]

STATIC_ROOT = os.path.join(BASE_DIR, 'static')
STATIC_URL = '/static/'

MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
MEDIA_URL = '/media/'

# Wagtail settings

WAGTAIL_SITE_NAME = "hptx"
WAGTAIL_USER_EDIT_FORM = 'user.forms.CustomUserEditForm'
WAGTAIL_USER_CREATION_FORM = 'user.forms.CustomUserCreationForm'
WAGTAIL_USER_CUSTOM_FIELDS = ['birthday', 'city', 'state', 'bio', 'photo',
                              'twitter_handler', 'instagram_handler',
                              'facebook_handler', 'rating', 'is_talent']

TAGGIT_CASE_INSENSITIVE = True

# Base URL to use when referring to full URLs within the Wagtail admin backend
# - e.g. in notification emails. Don't include '/admin' or a trailing slash
BASE_URL = 'http://localhost:8001'

WAGTAILIMAGES_FEATURE_DETECTION_ENABLED = True

AUTH_USER_MODEL = 'user.User'

# STRIPE
STRIPE_LIVE_PUBLIC_KEY = "STRIPE_API_LIVE_PUBLIC_KEY"
STRIPE_LIVE_SECRET_KEY = "STRIPE_API_LIVE_SECRET_KEY"
STRIPE_TEST_PUBLIC_KEY = "STRIPE_TEST_PUBLIC_KEY"
STRIPE_TEST_SECRET_KEY = "STRIPE_TEST_SECRET_KEY"
STRIPE_LIVE_MODE = False  # Change to True in production

# LOGIN
LOGIN_URL = 'user:login'
LOGIN_REDIRECT_URL = '/'


# DJANGO ADMINS
ADMINS = [
    ('Emilio Sanchez', 'emilio@commite.co'),
]
