from .base import *

DEBUG = False

SECRET_KEY = ')&@)2lu%e)+&q!mcbyx2%1tbvsbm!xwfn9cwn5w_pgx+w2!*-+'

DATABASES['default'].update({
    'NAME': 'hptx',
    'USER': 'dbmaster',
    'ENGINE': 'django.db.backends.postgresql',
    'PASSWORD': 'SgVY6W$354Y1',
    'HOST': 'production.cy4ccg1yqrv8.us-east-2.rds.amazonaws.com',
    'PORT': '5432',
})

ALLOWED_HOSTS = (
    'hptx.us',
    'pre.hptx.us',
)

STATIC_ROOT = os.path.join(BASE_DIR, '../static_root')

# EMAIL
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'email-smtp.us-east-1.amazonaws.com'
EMAIL_USE_TLS = True
EMAIL_HOST_USER = 'AKIAITRUEGII5PYJG5LQ'
EMAIL_HOST_PASSWORD = 'Am8JAzMctk3lP6fKPoWnP1+tjb8z48t1U6dTTlvOUqoD'
EMAIL_PORT = 2587
DEFAULT_FROM_EMAIL = 'no-reply@hptx.us'

# RAVEN
INSTALLED_APPS = INSTALLED_APPS + [
    'raven.contrib.django.raven_compat', ]
MIDDLEWARE = MIDDLEWARE + [
    'raven.contrib.django.raven_compat.middleware.Sentry404CatchMiddleware', ]

RELEASE = "production"
RAVEN_CONFIG = {
    'dsn': 'https://eab68db1aad94fe7a95214987524d485@sentry.io/1313762',
    'release': RELEASE,
}

LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        }
    },
    'handlers': {
        'sentry': {
            # To capture more than ERROR, change to WARNING, INFO, etc.
            'level': 'ERROR',
            'class':
                'raven.contrib.django.raven_compat.handlers.SentryHandler',
            'tags': {'custom-tag': 'x'},
        },
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false'],
            'class': 'django.utils.log.AdminEmailHandler'
        },
        'console': {
            'level': 'ERROR',
            'class': 'logging.StreamHandler',
            'stream': sys.stdout,
        },
        'file': {
            'level': 'DEBUG',
            'class': 'logging.FileHandler',
            'filename': 'hatch.log',
        },
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins'],
            'level': 'ERROR',
            'propagate': True,
        },
        'django_cron': {
            'handlers': ['console'],
            'level': 'ERROR',
        },
        'raven': {
            'level': 'DEBUG',
            'handlers': ['console'],
            'propagate': False,
        },
        'sentry.errors': {
            'level': 'DEBUG',
            'handlers': ['console'],
            'propagate': False,
        },
    }
}

try:
    from .local import *
except ImportError:
    pass
