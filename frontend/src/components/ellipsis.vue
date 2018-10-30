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
    const el = this.$refs.text
    var wordArray = el.innerHTML.split(' ');
    while(el.scrollHeight > el.parentElement.offsetHeight) {
        wordArray.pop();
        ellipsed = true;
        el.innerHTML = wordArray.join(' ') + '...';
     }
    if(ellipsed) {
      // Safety
      wordArray.pop();
      el.innerHTML = wordArray.join(' ') + '...';
    }
  }
}
</script>
