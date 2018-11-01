<template>
  <form v-on:submit.prevent="submit" novalidate>
     <div class="uk-flex uk-flex-between uk-flex-wrap uk-flex-wrap-between">
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
           <label class="uk-form-label">First Name</label>
           <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
            <input id="id_first_name" v-model="form.first_name" maxlength="30" name="first_name" required="required" type="text" class="uk-input">
            <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.first_name">{{ error }}</span>
          </div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-right">
           <label class="uk-form-label">Last Name</label>
           <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
            <input id="id_last_name"v-model="form.last_name"  maxlength="30" name="last_name" required="required" type="text" class="uk-input">
            <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.last_name">{{ error }}</span>
          </div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
           <label class="uk-form-label">Username</label>
           <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
            <input id="id_username" v-model="form.username" maxlength="254" name="username" required="required" type="text" class="uk-input">
            <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.username">{{ error }}</span>
          </div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-right">
           <label class="uk-form-label">Email</label>
           <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
            <input id="id_email" v-model="form.email" maxlength="254" name="email" required="required" type="email" class="uk-input">
            <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.email">{{ error }}</span>
          </div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
           <label class="uk-form-label">Password</label>
           <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
              <div class="uk-inline uk-width-expand"><span class="uk-form-icon uk-form-icon-flip"><i class="fas fa-lock"></i></span> <input id="id_password" v-model="form.password" name="password" required="required" type="password" class="uk-input"></div>
              <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.password">{{ error }}</span>
           </div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-right">
           <label class="uk-form-label"> Retype Password</label>
           <div class="uk-form-controls uk-margin-medium-bottom uk-margin">
              <div class="uk-inline uk-width-expand"><span class="uk-form-icon uk-form-icon-flip"><i class="fas fa-lock"></i></span> <input id="id_password2" v-model="form.password2" name="password2" required="required" type="password" class="uk-input"></div>
              <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.password2">{{ error }}</span>
           </div>
        </div>
        <div class="uk-width-1-2 uk-margin-right uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
           <label class="uk-form-label">Address</label>
           <div class="uk-margin-medium-bottom uk-margin-right uk-form-controls"><input v-model="form.address" name="address" placeholder="Street, Number..." type="text" class="uk-input uk-form-success">
             <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.address">{{ error }}</span>
           </div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
          <label class="uk-form-label">City</label>
          <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
           <input id="id_city" v-model="form.city" name="city" required="required" type="text" class="uk-input">
           <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.city">{{ error }}</span>
          </div>

        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-right">
           <label class="uk-form-label">ZIP</label>
           <div class="uk-margin uk-margin-small-bottom uk-form-controls">
             <input v-model="form.zip_code" name="zip_code" type="text" class="uk-input">
             <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.zip_code">{{ error }}</span>
           </div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
          <label class="uk-form-label">Country</label>
          <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
           <input id="id_country" v-model="form.country"name="country" required="required" type="text" class="uk-input">
           <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.country">{{ error }}</span>
         </div>

        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-right">
          <label class="uk-form-label">State</label>
          <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
           <input id="id_state" v-model="form.state" name="state" required="required" type="text" class="uk-input">
           <span class="fs-xs fw-medium fc-brand-primary" v-for="error in errors.state">{{ error }}</span>
          </div>

        </div>
     </div>
     <div>
        <p class="uk-flex"><input type="checkbox" v-model="privacy" class="uk-checkbox uk-margin-small-right uk-flex-none uk-margin-top"><span class="fs-sm">By signing up to this subscription plan and agreeing to the Privacy Policy you agree to this web site storing your information.</span></p>
        <p class="fs-sm"><input type="checkbox" class="uk-checkbox uk-margin-small-right" v-model="form.newsletter">I want to subscribe to your newsletters</p>
        <p class="fs-sm"><input type="checkbox" v-model="terms" class="uk-checkbox uk-margin-small-right">I accept <a href="#" class="hp-link-primary fw-medium">Terms and Conditions</a></p>
     </div>
     <input v-if="!loading" type="submit" value="proccess subscription" class="uk-button uk-button-primary uk-width-1-2 uk-margin-medium-top" :disabled="!ready" :class="{'uk-button-primary--disabled': !ready}">
     <p class="uk-margin-medium-top" v-if="loading">We're processing your information{{ this.loadingMsg }}</p>
  </form>
</template>

<script>
export default {
  name: 'signupForm',
  props: {
    plan: {
      type: String
    },
    amount: {
      type: Number
    },
    isStripeAmount: {
      type: Boolean,
      default: false
    },
    publicKey: {
      type: String
    },
    successUrl: {
      type: String
    },
    image: {
      type: String,
    },
  },
  data() {
    return {
      terms: false,
      privacy: false,
      handler: undefined,
      loading: false,
      loadInterval: null,
      loadingMsg: "",
      form: {
        'first_name': "",
        'last_name': "",
        'username': "",
        'email': "",
        'password': "",
        'password2': "",
        'address': "",
        'city': "",
        'zip_code': "",
        'country': "",
        'state': "",
        'newsletter': false,
        'plan': this.plan
      },
      errors: {}
    }
  },
  computed: {
    ready() {
      return this.terms && this.privacy;
    },
    stripeAmount() {
      if(this.isStripeAmount)
        return this.amount
      else
        return this.amount * 100
    }
  },
  methods: {
    setLoading() {
      this.loading = true;
      this.loadingInterval = setInterval(
        () => {
          this.loadingMsg = this.loadingMsg.length == 3 ? ".":(this.loadingMsg + ".")
        }, 500
      )
    },
    validatePasswords() {
      this.errors = {};
      if(this.form.password != this.form.password2) {
        this.errors = {
          'password2': "Passwords must match"
        }
        return false
      }
      return true
    },
    openStripe() {
      if(!this.handler)
        return ;

      this.handler.open({
        name: "Houston Preeminence Media Incorporated",
        description: `${this.plan.toUpperCase()} PLAN`,
        amount: this.stripeAmount,
        email: this.form.email
      });
    },
    submit() {
      if(!this.ready || !this.validatePasswords())
        return ;

      this.$axios.post(
         `/community/rest/validate/`,
        this.form
      ).then(
        () => {
          this.openStripe();
        }
      ).catch(
        (e) => {
          this.errors = Object.assign({}, e.response.data);
        }
      )
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
          this.setLoading();
          this.$axios.post(
              `/community/rest/subscribe/`,
              {
                'token': token.id,
                ...this.form
              }
          ).then(
            (response) => {
              clearInterval(this.loadingInterval)
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
