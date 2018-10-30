from .base import *

DEBUG = False

SECRET_KEY = ')&@)2lu%e)+&q!mcbyx2%1tbvsbm!xwfn9cwn5w_pgx+w2!*-+'

try:
    from .local import *
except ImportError:
    pass
