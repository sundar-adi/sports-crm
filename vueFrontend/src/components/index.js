import Vue from 'vue';

import StripeButton from './stripeButton.vue'

export default {
	install(Vue) {
		Vue.component('stripeButton', StripeButton);
	}
};
