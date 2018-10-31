import Vue from 'vue';

import Ellipsis from './ellipsis.vue'
import SignupForm from './signupForm.vue'
import StripeButton from './stripeButton.vue'

export default {
	install(Vue) {
		Vue.component('signupForm', SignupForm);
	}
};
