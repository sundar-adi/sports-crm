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

try:
    from .local import *
except ImportError:
    pass
