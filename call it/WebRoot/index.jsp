<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBefEdavsZmTM9WX3ZYNPZkNWufze7GHe4&signed_in=true&callback=initMap"
        async defer></script>
   <script>

function check() {
var directionsService = new google.maps.DirectionsService;
var directionsDisplay = new google.maps.DirectionsRenderer;
var start = document.getElementById('from').value;
  var end = document.getElementById('to').value;
   var request = {
        origin: start,
        destination: end,
        travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
  directionsService.route(request, function(response, status) {
    if (status === google.maps.DirectionsStatus.OK) {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 7,
    center: {lat: 41.85, lng: -87.65}
  });
  directionsDisplay.setMap(map);
  directionsDisplay.setDirections(response);
      var route = response.routes[0];
  var theLeg = route.legs[0];
  var distance = theLeg.distance.value;
  var time = theLeg.duration.value;
  alert("the distance between "+start+" and "+end+" is "+distance+" miles!"+" about "+Math.round(time/60)+"min");
    } else {
      window.alert('Directions request failed due to ' + status);
    }
  });
}
</script>

  </head>
  <body>
      <input type="text" id="from" value="beijing"/><br>
      <input type="text" id="to" value="shanghai"/>
    <button onclick="check()">submit</button>
    <div id="map"  style="width:500px;height:380px;"></div>
  </body>
</html>