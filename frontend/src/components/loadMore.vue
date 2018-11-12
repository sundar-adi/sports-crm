<template>
  <div>
    <articles-from-back :html="containedHtml" />
    <button :class="elmClass" @click.stop.prevent="loadMore" v-if="hasNext && elm == 'button'"><slot></slot></button>
    <a :class="elmClass" @click.stop.prevent="loadMore" href="#" v-else-if="hasNext"><slot></slot></a>
  </div>
</template>

<style lang="scss" scoped>

</style>

<script>
import Vue from 'vue';

Vue.component('articles-from-back', {
  props: ['html'],
  render(h){
    return h('div', [
      h(Vue.compile(this.html))
    ])
  }
})


export default {
  name: "loadMore",
  props: {
    hasNextKey: {
      type: String,
      default: "has_next"
    },
    htmlKey: {
      type: String,
      default: "html"
    },
    pageArg: {
      type: String,
      default: "page"
    },
    initialPage: {
      type: Number,
      default: 1
    },
    elm: {
      type: String,
      default: "a"
    },
    elmClass: {
      type: String,
      default: ""
    },
    endpoint: {
      type: String
    }
  },
  computed: {
    containedHtml() {
      return `<div>${this.html}</div>`
    }
  },
  data() {
    return {
      page: this.initialPage,
      hasNext: true,
      html: ""
    }
  },
  methods: {
    loadMore() {
      this.$axios.get(
        this.endpoint,
        {
          params: {
            [this.pageArg]: this.page + 1
          }
        }
      ).then(
        (response) => {
          this.html += response.data[this.htmlKey]
          this.hasNext = response.data[this.hasNextKey]
        }
      ).catch(
        (e) => {
          this.hasNext = false;
        }
      )
    }
  }
}
</script>
