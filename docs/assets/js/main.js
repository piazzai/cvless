document.addEventListener(
  "DOMContentLoaded",
  (event) => {
    particlesJS.load("particles-js", "assets/js/particles.json", function () {
      console.log("particles.js loaded - callback");
    });
  },
  false
);
