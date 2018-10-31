from .production import *

DATABASES['default'].update({
    'NAME': 'hptx',
    'USER': 'hptx',
    'ENGINE': 'django.db.backends.postgresql',
    'PASSWORD': 'hptx',
    'HOST': '',
    'PORT': '',
})

ALLOWED_HOSTS = (
    'hptx.commite.co',
)

STATIC_ROOT = os.path.join(BASE_DIR, '../static_root')


try:
    from .local import *
except ImportError:
    pass
