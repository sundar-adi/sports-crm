from django.utils.translation import ugettext_lazy as _


PLAN_SILVER = "silver"
PLAN_GOLD = "gold"
PLAN_PLATINUM = "platinum"

PLAN_CHOICES = (
    (PLAN_SILVER, _('Silver')),
    (PLAN_GOLD, _('Gold')),
    (PLAN_PLATINUM, _('Platinum')),
)
