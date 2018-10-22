import Vue from 'vue';

import AxiosPlugin from './axios.js'

export default {
	install(Vue) {
		Vue.use(AxiosPlugin);
	}
};
