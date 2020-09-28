

const ScrollrevealEffect = () => {
  
  ScrollReveal({ reset: false });
  ScrollReveal().reveal('.content-navbar',
                        { delay: 800 },
                        { duration: 800 });
  ScrollReveal().reveal('.services-section',
                        { interval: 300});
  ScrollReveal().reveal('.rotate',
                        { delay: 200 },
                        { duration: 2400 });
  ScrollReveal().reveal('.services',
                        { delay: 400 },
                        { duration: 2400 });
  ScrollReveal().reveal('.landing-about-us',
                        { delay: 200 },
                        { duration: 2400 });
  ScrollReveal().reveal('.landing-contact',
                        { delay: 200 },
                        { duration: 2400 });
}

export { ScrollrevealEffect }