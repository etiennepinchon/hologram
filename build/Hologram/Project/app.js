// Welcome to Hologram

// This is just demo code. Feel free to delete it all.

Hologram.ready(function() {
  var myBox = new Box({
    position: '-1 0.5 -3',
    rotation: '0 45 0',
    width: 1,
    height: 1,
    depth: 1,
    color: '#4CC3D9'
  });

  var mySphere = new Sphere({
    position: '1 1.25 -5',
    radius: 1.25,
    color: '#EF2D5E',
    segmentsWidth: 100,
    segmentsHeight: 100
  });

  var myCyclinder = new Cylinder({
    position: '1 0.75 -3',
    radius: .5,
    height: 1.5,
    color: '#FFC65D'
  });

  var myPlane = new Plane({
    position: '0 0 -4',
    rotation: '-90 0 0',
    width: 4,
    height: 4,
    color: '#7BC8A4'
  });

  var mySky = new Sky({
    color: '#ECECEC'
  });
})
