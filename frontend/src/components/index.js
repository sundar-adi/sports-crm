import Vue from 'vue';

import Ellipsis from './ellipsis.vue'
import LoadMore from './loadMore.vue'
import ModalPaywall from './modalPaywall.vue'
import SignupForm from './signupForm.vue'
import StripeButton from './stripeButton.vue'


export default {
	install(Vue) {
		Vue.component('ellipsis', Ellipsis);
		Vue.component('loadMore', LoadMore);
		Vue.component('modalPaywall', ModalPaywall);
		Vue.component('signupForm', SignupForm);
	}
};
