from djstripe.models import Plan

from rest_framework import serializers


class SubscribeSerializer(serializers.Serializer):
    token = serializers.CharField(max_length=255, required=True)
    plan = serializers.CharField(max_length=255, required=True)

    def validate_plan(self, val):
        valid = Plan.objects.filter(
            stripe_id=val
        ).exists()

        if valid:
            return val
        else:
            raise serializers.ValidationError({
                "plan": [
                    "The plan doesn't exists",
                ]
            })
