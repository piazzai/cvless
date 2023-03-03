document.addEventListener(
  "DOMContentLoaded",
  (event) => {
    particlesJS.load(
      "particles-home",
      "/assets/particles-home.json",
      function () {
        console.log("particles.js loaded - callback");
      }
    );
    particlesJS.load(
      "particles-404",
      "/assets/particles-404.json",
      function () {
        console.log("particles.js loaded - callback");
      }
    );
  },
  false
);
