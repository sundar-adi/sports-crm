<docs>
  Hey, developer of the future. I'm the 6 November Dander, and I didn't delete this
  because I don't know if we were going to need it or not. If you're going to use it,
  please, delete this doc. If not, and at least two weeks have passed since Nov 6, please, delete me
  and invite Dander of the future to a cold glass of beer (why not?)
</docs>

<template>
  <div class="modal-container">
    <div class="modal-container__overlay" @click="$emit('close')"></div>
    <div class="modal-container__content">
      <div class="modal-paywall uk-flex">
        <div class="fc-brand-secondary-light modal-paywall__content">
          <h1 class="fs-xl fc-brand-secondary-light ff-title">Thank you for visiting us!</h1>
          <p class="fs-sm">Cras fringilla justo odio, quis rutrum risus aliquam eget. Pellentesque euismod ultrices nisl.</p>
          <ul class="uk-list uk-list--menu">
            <li class="fs-sm"><span class="uk-list__hp-badge"><i class="fas fa-check-circle fc-brand-primary"></i></span>Nam eros neque</li>
            <li class="fs-sm"><span class="uk-list__hp-badge"><i class="fas fa-check-circle fc-brand-primary"></i></span>Praesent arcu ipsum posuere</li>
            <li class="fs-sm"><span class="uk-list__hp-badge"><i class="fas fa-check-circle fc-brand-primary"></i></span>Aliquam risus augue</li>
          </ul>
          <a href="" class="uk-button uk-button-primary uk-margin-small uk-width-1-1">Proccess Subscription</a>
          <div class="ta-center">
            <span class="fs-sm fc-brand-secondary uk-margin-right">Do you already have an account? </span><a href="" class="fs-xs hp-link-primary">Login Now</a>
          </div>
        </div>
        <div class="modal-paywall__img uk-flex uk-flex-center uk-flex-middle uk-flex-column">
          <img class="uk-margin-medium-bottom" src="../assets/Feed/logoWhite.png"/>
          <img src="../assets/general/mockup.png"/>
        </div>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
  .modal-container{
    height: 100vh;
    position: fixed;
    right: 50%;
    top: 50%;
    transform: translate(50%,-50%);
    width: 100%;
    z-index: 4;
    .modal-container__overlay {
      background-color: rgba(53,60,100,0.8);
      bottom: 0;
      left: 0;
      position: absolute;
      right: 0;
      top: 0;
      -webkit-animation: transition 0.5s ease; /* Safari 4.0 - 8.0 */
      -webkit-animation-fill-mode: forwards; /* Safari 4.0 - 8.0 */
      animation: transition 0.5s ease;
      animation-fill-mode: forwards;
    }
    .modal-container__content {
      overflow: hidden;
      position: absolute;
      right: 50%;
      top: 50%;
      transform: translate(50%, -50%);
      .modal-paywall{
        background-color: #fff;
        border-radius: 5px;
        width: 48rem;
        z-index: 1;
        .modal-paywall__content{
          padding: 5.6rem 2.5rem;
          width: 20rem;
        }
        .modal-paywall__img{
          background-image: url('../assets/general/bg-img.png');
          background-repeat: no-repeat;
          background-position: top center;
          background-size: cover;
          border-radius: 0 4px 4px 0;
          width: 23.13rem;
        }
      }
    }
  }
</style>

<script>
export default {
  name: "modalPaywall",

}
</script>
