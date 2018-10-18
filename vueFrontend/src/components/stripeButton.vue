<template>
  <button v-if="!loading" type="button" @click="open"><slot></slot></button>
  <span v-else>We're processing your payment. Please, wait...</span>
</template>

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
          console.log("ole", token)
          this.loading = true;
          // You can access the token ID with `token.id`.
          // Get the token ID to your server-side code for use.
        }
      });
      window.addEventListener('popstate', () => {
        this.handler.close();
      });
    }
  }
}
</script>
