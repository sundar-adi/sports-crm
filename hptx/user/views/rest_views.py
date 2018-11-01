from django.conf import settings
from django.contrib.auth import authenticate, login

from rest_framework.generics import CreateAPIView

from payment.utils import (
    get_or_create_stripe_customer, create_stripe_subscription)

from user.serializers import ValidateUserSerializer, SubscribeUserSerializer


class ValidateUserView(CreateAPIView):
    serializer_class = ValidateUserSerializer

    def perform_create(self, serializer):
        pass


class SubscribeUserView(CreateAPIView):
    serializer_class = SubscribeUserSerializer

    def _get_plan_id(self, value):
        if value == "silver":
            return settings.SILVER_PLAN_STRIPE_ID
        elif value == "gold":
            return settings.GOLD_PLAN_STRIPE_ID
        elif value == "platinum":
            return settings.DIAMOND_PLAN_STRIPE_ID

    def perform_create(self, serializer):
        user = serializer.save()
        raw_password = serializer.validated_data.get('password')
        user = authenticate(username=user.username, password=raw_password)
        login(self.request, user)
        res, created, customer = get_or_create_stripe_customer(
            serializer.validated_data.get('token'),
            user
        )

        res, subs = create_stripe_subscription(
            customer.id,
            self._get_plan_id(serializer.validated_data.get('plan')),
        )
