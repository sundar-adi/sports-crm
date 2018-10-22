<template>
  <button class="uk-button uk-button-default" v-if="!loading" type="button" @click="open"><slot></slot></button>
  <span v-else>We're processing your payment. Please, wait...</span>
</template>

<style lang="scss" scoped>

  .uk-button {
    font-weight: bold;
  }
</style>

<script>
export default {
  name: "stripeButton",
  props: {
    publicKey: {
      type: String
    },
    name: {
      type: String,
    },
    description: {
      type: String,
    },
    image: {
      type: String,
    },
    amount: {
      type: Number
    },
    email: {
      type: String
    },
    paymentUrl: {
      type: String
    },
    paymentPayload: {
      type: Object,
      default: () => new Object()
    },
    successUrl: {
      type: String
    }
  },
  data() {
    return {
      'handler': undefined,
      'loading': false,
    }
  },
  methods: {
    open() {
      if(!this.handler)
        return ;

      this.handler.open({
        name: this.name,
        description: this.description,
        amount: this.amount,
        email: this.email
      });
    }
  },
  mounted() {
    if(window.StripeCheckout == undefined) {
      throw "StripeCheckout script missing"
    } else {
      this.handler = window.StripeCheckout.configure({
        key: this.publicKey,
        image: this.image,
        locale: 'auto',
        token: (token) => {
          this.loading = true;
          this.$axios.post(
              this.paymentUrl,
              {
                'token': token.id,
                ...this.paymentPayload
              }
          ).then(
            (response) => {
              window.open(this.successUrl, "_self");
            }
          )
        }
      });
      window.addEventListener('popstate', () => {
        this.handler.close();
      });
    }
  }
}
</script>
