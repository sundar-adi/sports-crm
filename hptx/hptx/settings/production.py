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
DEFAULT_FROM_EMAIL = 'webmaster@hptx.us'

try:
    from .local import *
except ImportError:
    pass
