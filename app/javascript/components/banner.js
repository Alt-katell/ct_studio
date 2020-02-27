import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find inspiration...", "Inspire..."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
