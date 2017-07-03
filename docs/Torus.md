## [Torus](#torus)

### Extends: [Entity](#entity)

The torus geometry creates a donut or curved tube shape.

	myTorus = new Torus
		color: "#B84A39"
		arc: 180
		radius: 5
		radiusTubular: 0.5

-------------------------------------------------------

#### [torus.color](#torus-color) *<color>*

Defines the color of the torus. Default is white.

	myTorus = new Torus
		color: Color.blue

-------------------------------------------------------

#### [torus.radius](#torus-radius) *<float>*

Radius that contains the torus. Default is 1.

	myTorus = new Torus
		radius: 2
		color: Color.blue

-------------------------------------------------------

#### [torus.radiusTubular](#torus-radiusTubular) *<float>*

Radius of the tubes of the torus. Default is 0.2.

	myTorus = new Torus
		radiusTubular: 0.3
		color: Color.blue

-------------------------------------------------------

#### [torus.segmentsRadial](#torus-segmentsRadial) *<integer>*

Number of segments along the circumference of the tube ends. A higher number means the tube will be more round. Default is 36.

	myTorus = new Torus
		segmentsRadial: 42

-------------------------------------------------------

#### [torus.segmentsTubular](#torus-segmentstubular) *<integer>*

Number of segments along the circumference of the tube face. A higher number means the tube will be more round. Default is 32.

	myTorus = new Torus
		segmentsTubular: 36

-------------------------------------------------------

#### [torus.arc](#torus-arc) *<integer>*

Central angle. Default is 360.

	myTorus = new Torus
		arc: 180

-------------------------------------------------------

#### [torus.src](#torus-src) *<string/AssetImage>*

Defines the material used when rendering the torus.

	myTorus = new Torus
		src: "assets/texture.png"
