import Vue from "vue";
import TurbolinksAdapter from "vue-turbolinks";

Vue.use(TurbolinksAdapter);

const initNavbar = () => {
  const navbar = document.getElementById("navbar")
  if (navbar) {
    new Vue({
      el: navbar,
      data: {
        navbarClass: ''
      },
      methods: {
        updateNavbar: function () {
          if (window.scrollY >= window.innerHeight) {
            this.navbarClass = 'navbar-lewagon-white'
          } else {
            this.navbarClass = ''
          }
        }
      },
      mounted() {
        console.log("Hello from navbar.js")
        window.addEventListener("scroll", this.updateNavbar)
      },
    })
  }
}

export { initNavbar };
