// Welcome to Hologram

// This is just demo code. Feel free to delete it all.

Hologram.ready(function() {

  Hologram.scene.fog = {
    type: Fog.exponential,
    color: "#3c01e7",
    near: 8,
    far: 20
  };

  //Hologram.cursor.enabled = true;

  //Hologram.camera.mouseCursor = false;
  //Hologram.scene.glitch = true;

  Hologram.effects.bloom = {
    strength: 0.8,
    radius: 0.3,
    threshold: 0.1
  };

  var mySky = new Sky({
    color: Color.black
  });

  var baseTorus = new Torus({
    position: "0 0.7 -1",
    rotation: "0 90 0",
    wireframe: true,
    wireframeWidth: 4,
    segmentsTubular: 42,
    color: Color.red
  });
  baseTorus.animate({
    rotation: "0 90 180",
    time: 5,
    repeat: Infinity,
    curve: Curve.linear
  });

  var innerTorus = new Torus({
    position: "0 0.7 -1",
    rotation: "0 90 0",
    //radiusTubular: 0.2,
    wireframe: true,
    wireframeWidth: 4,
    //opacity: 0.2,
    color: Color.purple
  });
  innerTorus.animate({
    rotation: "0 90 180",
    time: 10,
    repeat: Infinity,
    curve: Curve.linear
  });


  var thinTorus = new Torus({
    position: "-0.2 0.66 -1",
    rotation: "0 90 0",
    radius: 1.4,
    radiusTubular: 0.01,
    segmentsRadial: 4,
    wireframe: true,
    wireframeWidth: 4,
    color: Color.yellow,
    opacity: 0.3
  });
  thinTorus.animate({
    rotation: "0 90 -180",
    time: 4,
    repeat: Infinity,
    curve: Curve.linear
  });


  var thinTorus = new Torus({
    position: "0.2 0.66 -1",
    rotation: "0 90 0",
    radius: 1.4,
    radiusTubular: 0.01,
    segmentsRadial: 4,
    wireframe: true,
    wireframeWidth: 4,
    color: Color.yellow,
    opacity: 0.3
  });
  thinTorus.animate({
    rotation: "0 90 -180",
    time: 4,
    repeat: Infinity,
    curve: Curve.linear
  });

  var thinTorus = new Torus({
    position: "0 0.7 -1",
    rotation: "0 90 0",
    radius: 1.4,
    radiusTubular: 0.01,
    segmentsRadial: 60,
    wireframe: true,
    wireframeWidth: 4,
    color: Color.red
  });
  thinTorus.animate({
    rotation: "0 90 -180",
    time: 2,
    repeat: Infinity,
    curve: Curve.linear
  });





  var outerTorus = new Torus({
    position: "0 2 -2",
    rotation: "0 90 0",
    radiusTubular: 2,
    wireframe: true,
    color: Color.green,
    opacity: 0.3
  });
  outerTorus.animate({
    rotation: "0 90 180",
    time: 10,
    repeat: Infinity,
    curve: Curve.linear
  });


/*
  Hologram.physics = {
    gravity: -9.3
  }



  //
  Hologram.effects.bloom = {
    strength: 0.06,
    radius: 0.1,
    threshold: 0.1
  };

  var myBox = new Box({
    position: '-1 4 -3',
    rotation: '0 45 0',
    width: 1,
    height: 1,
    depth: 1,
    color: Color.yellow,
    dynamic: {
      mass: 10000
    }
  });

  var myBox = new Box({
    position: '2 2 -4',
    rotation: '0 45 0',
    width: 1,
    height: 1,
    depth: 1,
    color: Color.blue,
  });


  myBox.onClick(function() {
    print("clicked");

    //Hologram.cursor.enabled = false;
    this.animate({
      position: '-1.4 0.5 -2',
  		rotation: "0 360 0",
  		time: 1,
      repeat: 1,
      fill: Fill.both,
      curve: Curve.easeCirc,
  		direction: Direction.alternate,
  		then: function() {
        console.log("animation done")
      }
    });
  });


  var mySphere = new Sphere({
    position: '1 3 -5',
    radius: 0.5,
    color: '#EF2D5E',
    segmentsWidth: 100,
    segmentsHeight: 100,
    dynamic: true,

  });

  mySphere.onCollide(function(e) {
    console.log("collied!", e);
  })

  var myCyclinder = new Box({
    position: '1 10 -12',
    width: 4,
    height: 4,
    depth: 4,
    color: '#FFC65D',
    dynamicBody: {
      mass: 13000,
      shape: Shape.auto
    },
    /*constraint: {
      target: mySphere
    },*/
  /*  lookAt: myBox
  });



  var myPlane = new Plane({
    position: '0 0 -4',
    rotation: '-90 0 0',
    width: 40,
    height: 40,
    color: '#7BC8A4',
    static: true,
    particles: {
      color: Color.red
    }
  });

  var mySky = new Sky({
    color: Color.aquamarine
  });*/
})
