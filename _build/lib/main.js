'use strict';

document.addEventListener('DOMContentLoaded', function () {

  // Get all "navbar-burger" elements
  var $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach(function (el) {
      el.addEventListener('click', function () {

        // Get the target from the "data-target" attribute
        var target = el.dataset.target;
        var $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');
      });
    });
  }

  // modal
  var $modals = document.getElementsByClassName('modal-button');

  var _loop = function _loop(i) {
    $modals[i].addEventListener('click', function () {
      var target = $modals[i].dataset.target;
      var $target = document.getElementById(target);
      $target.classList.toggle('is-active');
    });
  };

  for (var i = 0; i < $modals.length; i++) {
    _loop(i);
  };

  var deactivateClass = function deactivateClass(className) {
    var elms = document.getElementsByClassName(className);

    var _loop2 = function _loop2(i) {
      elms[i].addEventListener('click', function () {
        var target = elms[i].parentNode;
        target.classList.remove('is-active');
      });
    };

    for (var i = 0; i < elms.length; i++) {
      _loop2(i);
    };
  };

  deactivateClass('modal-background');
  deactivateClass('modal-close');
});