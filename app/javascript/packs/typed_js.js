import Typed from 'typed.js';

const dynamicAddEvent = () => {
  new Typed('#type-script', {
    strings: ["Borring with your life...", "It's time to do the Show !"],
    typeSpeed: 50,
    loop: true
  });
}

export default dynamicAddEvent ;
