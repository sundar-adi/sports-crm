from django.contrib.auth.password_validation import validate_password

from rest_framework import serializers

from user.models import User


class ValidateUserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)

    def validate_password(self, value):
        validate_password(value)
        return value

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email',
                  'password', 'address', 'city', 'zip_code',
                  'country', 'state', )
        required_fields = (
            'username', 'first_name', 'last_name', 'email',
            'password', 'address', 'city', 'zip_code',
            'state',
        )
        extra_kwargs = {field: {
            'required': True, 'allow_blank': False
            } for field in required_fields}


class SubscribeUserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)
    token = serializers.CharField(write_only=True)

    def validate_password(self, value):
        validate_password(value)
        return value

    def create(self, validated_data):
        validated_data.pop('token')
        user = super(SubscribeUserSerializer, self).create(validated_data)
        user.set_password(validated_data['password'])
        user.save()
        return user

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email',
                  'password', 'address', 'city', 'zip_code',
                  'country', 'state', 'plan', 'token', 'newsletter')
        required_fields = (
            'username', 'first_name', 'last_name', 'email',
            'password', 'address', 'city', 'zip_code',
            'state', 'token'
        )
        extra_kwargs = {field: {
            'required': True, 'allow_blank': False
            } for field in required_fields}
