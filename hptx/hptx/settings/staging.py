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


try:
    from .local import *
except ImportError:
    pass
