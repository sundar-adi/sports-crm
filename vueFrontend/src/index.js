import Vue from 'vue'

import Components from './components'
import Plugins from './plugins'

Vue.use(Components);
Vue.use(Plugins);

new Vue({
  el: '#app',
})
