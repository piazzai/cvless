document.addEventListener(
  "DOMContentLoaded",
  (event) => {
    particlesJS.load("particles-js", "/assets/particles.json", function () {
      console.log("particles.js loaded - callback");
    });
  },
  false
);
