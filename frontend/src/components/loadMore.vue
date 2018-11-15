<template>
  <div>
    <transition-group name="list" tag="div">
      <articles-from-back v-for="chunk in html":html="containedHtml(chunk)" v-bind:key="chunk" />
    </transition-group>
    <button :class="elmClass" @click.stop.prevent="loadMore" v-if="hasNext && elm == 'button'"><slot></slot></button>
    <a :class="elmClass" @click.stop.prevent="loadMore" href="#" v-else-if="hasNext"><slot></slot></a>
  </div>
</template>

<style lang="scss" scoped>
.list-enter-active {
  transition: all 1s;
}
.list-enter {
  opacity: 0;
}
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
  },
  data() {
    return {
      page: this.initialPage,
      hasNext: true,
      html: [],
    }
  },
  methods: {
    containedHtml(chunk) {
      return `<div>${chunk}</div>`
    },
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
          this.html.push(response.data[this.htmlKey]);
          this.page += 1
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
