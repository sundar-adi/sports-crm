<template>
  <form v-on:submit.prevent="submit" novalidate>
     <div class="uk-flex uk-flex-between uk-flex-wrap uk-flex-wrap-between">
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
           <label class="uk-form-label">First Name</label>
           <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
            <input id="id_first_name" v-model="form.first_name" maxlength="30" name="first_name" required="required" type="text" class="uk-input"></div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-right">
           <label class="uk-form-label">Last Name</label>
           <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
            <input id="id_last_name"v-model="form.last_name"  maxlength="30" name="last_name" required="required" type="text" class="uk-input"></div>
        </div>
        <div class="uk-width-1-2 uk-margin-right uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
           <label class="uk-form-label">Email</label>
           <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
            <input id="id_email" v-model="form.email" maxlength="254" name="email" required="required" type="text" class="uk-input"> <span class="fs-xs fw-medium fc-brand-primary">Feedback Value</span></div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
           <label class="uk-form-label">Password</label>
           <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
              <div class="uk-inline uk-width-expand"><span class="uk-form-icon uk-form-icon-flip"><i class="fas fa-lock"></i></span> <input id="id_password1" v-model="form.password1" name="password1" required="required" type="password" class="uk-input"></div>
              <span class="fs-xs fw-medium fc-brand-primary">Feedback Value</span>
           </div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-right">
           <label class="uk-form-label"> Retype Password</label>
           <div class="uk-form-controls uk-margin-medium-bottom uk-margin">
              <div class="uk-inline uk-width-expand"><span class="uk-form-icon uk-form-icon-flip"><i class="fas fa-lock"></i></span> <input id="id_password2" v-model="form.password2" name="password2" required="required" type="password" class="uk-input"></div>
              <span class="fs-xs fw-medium fc-brand-primary">Feedback Value</span>
           </div>
        </div>
        <div class="uk-width-1-2 uk-margin-right uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
           <label class="uk-form-label">Address</label>
           <div class="uk-margin-medium-bottom uk-margin-right uk-form-controls"><input v-model="form.address" name="address" placeholder="Street, Number..." type="text" class="uk-input uk-form-success"> <span class="fs-xs fw-medium fc-brand-primary">Feedback Value</span></div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
          <label class="uk-form-label">City</label>
          <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
           <input id="id_city" v-model="form.city" name="city" required="required" type="text" class="uk-input"></div>

        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-right">
           <label class="uk-form-label">ZIP</label>
           <div class="uk-margin uk-margin-small-bottom uk-form-controls"><input v-form="form.zip_code" name="zip" type="text" class="uk-input"> <span class="fs-xs fw-medium fc-brand-primary">Feedback Value</span></div>
        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-left">
          <label class="uk-form-label">Country</label>
          <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
           <input id="id_country" v-model="form.country"name="country" required="required" type="text" class="uk-input"></div>

        </div>
        <div class="uk-width-1-2 uk-padding-small uk-padding-remove-vertical uk-padding-remove-right">
          <label class="uk-form-label">State</label>
          <div class="uk-margin-medium-bottom uk-margin uk-form-controls">
           <input id="id_state" v-model="form.state" name="state" required="required" type="text" class="uk-input"></div>

        </div>
     </div>
     <div>
        <p class="uk-flex"><input type="checkbox" class="uk-checkbox uk-margin-small-right uk-flex-none uk-margin-top"><span class="fs-sm">By signing up to this subscription plan and agreeing to the Privacy Policy you agree to this web site storing your information.</span></p>
        <p class="fs-sm"><input type="checkbox" class="uk-checkbox uk-margin-small-right">I want to subscribe to your newsletters</p>
        <p class="fs-sm"><input type="checkbox" class="uk-checkbox uk-margin-small-right">I accept <a href="#" class="hp-link-primary fw-medium">Terms and Conditions</a></p>
     </div>
     <input type="submit" value="proccess subscription" class="uk-button uk-button-primary uk-width-1-2 uk-margin-medium-top">
  </form>
</template>

<script>
export default {
  name: 'signupForm',
  data() {
    return {
      form: {
        'first_name': "",
        'last_name': "",
        'email': "",
        'password1': "",
        'password2': "",
        'address': "",
        'city': "",
        'zip_code': "",
        'country': "",
        'state': "",
        'subscribe': false
      },
      errors: {}
    }
  },
  methods: {
    submit() {
      this.$axios.put(
        "/user/signup/",
        this.form
      )
    }
  }

}
</script>
