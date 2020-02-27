import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if(document.querySelector('#banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Find inspiration...", "Inspire..."],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
