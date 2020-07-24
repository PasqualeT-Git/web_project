import Typed from 'typed.js';

const initTypedJs = () => {
 if (document.querySelector('#typing')) {
   new Typed('#typing', {
    strings: ['creating','designing','testing','planning'],
    typeSpeed: 30,
    backSpeed: 75,
    showCursor: true,
    smartBackspace: true
    });
  }
};

export { initTypedJs };