import {getCookie} from './../utils/utils';

import axios from 'axios';

export default {
  install(Vue, options) {
      Vue.prototype.$axios = axios.create({
        headers: {
          'X-CSRFToken': getCookie('csrftoken')
        }
      });
  }
}
