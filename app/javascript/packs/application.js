// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});


// --------------------------------------------------------
// SVG photo bundle
// --------------------------------------------------------

var HeroGrid = document.querySelector(".anim-hero");

var animationIsOk = window.matchMedia("(prefers-reduced-motion: no-preference)")
  .matches;

if (animationIsOk) {
  var tl = gsap.timeline({
    delay: 1.7,
    defaults: {
      transformOrigin: "right center",
      ease: "expo.out",
      duration: 1.2,
      stagger: {
        each: 0.5,
        from: "end"
      }
    }
  });
  tl
    .set(".fouc--hero", {
      opacity: 1
    })
    .from(".hero__swipe-1", {
      scaleX: 0
    })
    .from(
      ".hero__swipe-2",
      {
        scaleX: 0
      },
      "<"
    )
    .from(
      ".hero__swipe-3",
      {
        scaleX: 0
      },
      "<"
    )
    .from(
      ".hero__swipe-4",
      {
        scaleX: 0
      },
      "<"
    )
    .from(
      ".hero__circle",
      {
        duration: 0.7,
        transformOrigin: "center",
        opacity: 0,
        scale: 0.7,
        ease: "sine.out"
      },
      "<"
    );
}
