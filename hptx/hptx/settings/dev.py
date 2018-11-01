from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '&010bv8s9rxfbp9w%!rt0_vn&fbbbag4u46rt25g+zttvd1)zy'

# SECURITY WARNING: define the correct hosts in production!
ALLOWED_HOSTS = ['*']

EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

INSTALLED_APPS += [
    'livereload',
]

MIDDLEWARE += [
    'livereload.middleware.LiveReloadScript',
]

LIVERELOAD_HOST = "0.0.0.0"

SILVER_PLAN_STRIPE_ID = "id_plan_silver"
GOLD_PLAN_STRIPE_ID = "id_plan_gold"
DIAMOND_PLAN_STRIPE_ID = "id_plan_diamond"


try:
    from .local import *
except ImportError:
    pass
