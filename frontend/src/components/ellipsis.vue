<template>
  <div ref="text"><slot></slot></div>
</template>

<style lang="scss" scoped>
</style>

<script>
export default {
  name: "ellipsis",
  props: {
    words: {
      type: Number,
    },
    percentage: {
      type: Number
    },
    firstPElm: {
      type: Boolean,
      default: true
    }
  },
  methods: {
    checkLimit(container, i, limit) {
      if(limit) {
        return i <= limit
      } else {
        return container.scrollHeight <= container.parentElement.offsetHeight
      }
    }
  },
  mounted() {
    let elm = false;
    let container = this.$refs.text
    let source = container;
    let limit = this.words;

    if(this.firstPElm) {
      const qs = container.querySelectorAll("p");
      if(qs && qs.length) {
        let para = Array.from(qs).find((elm) => elm.innerHTML.length > 0)

        if(para)
          source = para
      }
    }

    const wordArray = source.innerHTML.split(' ');
    container.innerHTML = wordArray.join(' ');

    if(!limit && this.percentage) {
      limit = Math.floor(wordArray.length * (this.percentage/100))
    }

    for(var i=wordArray.length - 1; i > 0; i--) {
      if(!elm && this.checkLimit(container, i, limit)) {
        break;
      } else {
        if(!elm && /<\/[a-zA-Z]+>/.test(wordArray[i])) {
          elm = true;
        }

        if(!elm) {
          wordArray.splice(i, 1);
          container.innerHTML = wordArray.join(' ') + '...';
        } else if(/<[a-zA-Z]+/.test(wordArray[i])) {
          elm = false;
        }
      }
    }
  }
}
</script>
