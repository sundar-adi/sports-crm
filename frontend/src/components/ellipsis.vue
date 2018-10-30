<template>
  <div ref="text"><slot></slot></div>
</template>

<style lang="scss" scoped>
</style>

<script>
export default {
  name: "ellipsis",
  mounted() {
    let ellipsed = false;
    let elm = false;
    let container = this.$refs.text
    let source = container;
    const qs = container.querySelectorAll("p");
    if(qs && qs.length) {
      let para = Array.from(qs).find((elm) => elm.innerHTML.length > 0)

      if(para)
        source = para
    }

    const wordArray = source.innerHTML.split(' ');
    for(var i=wordArray.length - 1; i > 0; i--) {
      if(!elm && container.scrollHeight <= container.parentElement.offsetHeight) {
        break;
      } else {
        if(!elm && /<\/[a-zA-Z]+>/.test(wordArray[i])) {
          elm = true;
        }

        if(!elm) {
          wordArray.splice(i, 1);
          ellipsed = true;
          container.innerHTML = wordArray.join(' ') + '...';
        } else if(/<[a-zA-Z]+/.test(wordArray[i])) {
          elm = false;
        }
      }
    }
  }
}
</script>
