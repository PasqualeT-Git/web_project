import Typed from 'typed.js';


const initTypedJs = () => {
  const element = document.getElementById('typing')

  if (element) {
    new Typed('#typing', {
      strings: ['creating','designing','testing','planning','developing','selecting'],
      typeSpeed: 60,
      backSpeed: 100,
      showCursor: true,
      smartBackspace: true,
      loop: true,
      loopCount: Infinity
      });
    }
};

export { initTypedJs };