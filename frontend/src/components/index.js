import Vue from 'vue';

import Ellipsis from './ellipsis.vue'
import StripeButton from './stripeButton.vue'

export default {
	install(Vue) {
		Vue.component('ellipsis', Ellipsis);
	}
};
