from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


class SignUpForm(UserCreationForm):
    first_name = forms.CharField(max_length=30, required=True, widget=forms.TextInput(attrs={'class': "uk-input"}))
    last_name = forms.CharField(max_length=30, required=True, widget=forms.TextInput(attrs={'class': "uk-input"}))
    email = forms.EmailField(max_length=254, widget=forms.TextInput(attrs={'class': "uk-input"}))
    password1 = forms.CharField(widget=forms.TextInput(attrs={'class': "uk-input"}))
    password2 = forms.CharField(widget=forms.TextInput(attrs={'class': "uk-input"}))


    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2', )
