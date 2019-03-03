'use strict';

document.addEventListener('DOMContentLoaded', () => {

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach( el => {
      el.addEventListener('click', () => {

        // Get the target from the "data-target" attribute
        const target = el.dataset.target;
        const $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }

  // modal
  const $modals = document.getElementsByClassName('modal-button');
  for (let i = 0; i < $modals.length; i++) {
    $modals[i].addEventListener('click', () => {
      const target = $modals[i].dataset.target;
      const $target = document.getElementById(target);
      $target.classList.toggle('is-active');
    });
  };

  const deactivateClass = (className) => {
    const elms = document.getElementsByClassName(className);
    for (let i = 0; i < elms.length; i++) {
      elms[i].addEventListener('click', () => {
        const target = elms[i].parentNode;
        target.classList.remove('is-active');
      });
    };
  };

  deactivateClass('modal-background');
  deactivateClass('modal-close');

});
