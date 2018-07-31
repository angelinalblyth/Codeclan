const app = function(){

  var coords = [51.246454,22.568446]
  var coords2 = [51.247821, 22.556262]
  var zoom = 15;
  let containerID = 'main-map';

  const mainMap = new MapWrapper(containerID, coords, zoom);

  mainMap.addMarker(coords);
  mainMap.addMarker(coords2);
};


window.addEventListener('DOMContentLoaded', app);
