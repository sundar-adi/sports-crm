from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.serializers import ValidationError
from rest_framework.views import APIView

from djstripe.models import Customer

from payment.serializers import SubscribeSerializer
from payment.utils import (
    get_or_create_stripe_customer, create_stripe_subscription)


class SubscribeView(APIView):
    permission_classes = [IsAuthenticated, ]

    def _get_customer(self):
        return Customer.objects.filter(
            email=self.request.user.email
        ).first()

    def post(self, request, *args, **kwargs):
        serializer = SubscribeSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)

        res, created, customer = get_or_create_stripe_customer(
            serializer.data.get('token'),
            self.request.user.email
        )

        if not res:
            raise ValidationError({'non_field_error': [
                'There was an error while creating customer']})

        res, subs = create_stripe_subscription(
            customer.id,
            serializer.data.get('plan'),
        )

        if not res:
            raise ValidationError({'non_field_error': [
                'There was an error while creating subscription']})

        return Response({})
