(function($) {
  'use strict';

  var marker;

  function initMap() {
    var contactloc = document.getElementById('contact-loc');
    var map = new google.maps.Map(contactloc, {
      zoom: 13,
      center: {lat: 59.325, lng: 18.070}
    });
    var image = contactloc.getAttribute('data-img');

    marker = new google.maps.Marker({
      map: map,
      draggable: true,
      animation: google.maps.Animation.DROP,
      position: {lat: 59.327, lng: 18.067},
      icon: image
    });
    marker.addListener('click', toggleBounce);
  }

  function toggleBounce() {
    if (marker.getAnimation() !== null) {
      marker.setAnimation(null);
    } else {
      marker.setAnimation(google.maps.Animation.BOUNCE);
    }
  }

  google.maps.event.addDomListener(window, 'load', initMap);

})(window.jQuery);//===== Document Ready Ends =====//