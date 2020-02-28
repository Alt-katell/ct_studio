import Typed from 'typed.js';

const loadDynamicLoginText = () => {
  if(document.querySelector('#login-typed-text')) {
    new Typed('#login-typed-text', {
      strings: ["Explore our catalog", "and find the perfect print for your products"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicLoginText };
