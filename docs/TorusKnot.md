## [Torus Knot](#torus-knot)

### Extends: [Entity](#entity)

The torus knot geometry creates a pretzel shape. A pair of coprime integers, p and q, defines the particular shape of the pretzel. If p and q are not coprime the result will be a torus link.

	myTorusKnot = new TorusKnot
		color: "#B84A39"
		p: 2
		q: 7
		radius: 5
		radiusTubular: 0.1

-------------------------------------------------------

#### [torusKnot.color](#torusKnot-color) *<color>*

Defines the color of the torus knot. Default is white.

	myTorusKnot = new TorusKnot
		color: Color.blue

-------------------------------------------------------

#### [torusKnot.radius](#torusKnot-radius) *<float>*

Radius that contains the torus knot. Default is 1.

	myTorusKnot = new TorusKnot
		radius: 2
		color: Color.blue

-------------------------------------------------------

#### [torusKnot.radiusTubular](#torusKnot-radiustubular) *<float>*

Radius of the tubes of the torus knot. Default is 0.2.

	myTorusKnot = new TorusKnot
		radiusTubular: 0.3
		color: Color.blue

-------------------------------------------------------

#### [torusKnot.segmentsRadial](#torusKnot-segmentsradial) *<integer>*

Number of segments along the circumference of the tube ends. A higher number means the tube will be more round. Default is 36.

	myTorusKnot = new TorusKnot
		segmentsRadial: 42

-------------------------------------------------------

#### [torusKnot.segmentsTubular](#torusKnot-segmentstubular) *<integer>*

Number of segments along the circumference of the tube face. A higher number means the tube will be more round. Default is 32.

	myTorusKnot = new TorusKnot
		segmentsTubular: 36

-------------------------------------------------------

#### [torusKnot.p](#torusKnot-p) *<integer>*

How many times the geometry winds around its axis of rotational symmetry. Default is 2.

	myTorusKnot = new TorusKnot
		p: 4

-------------------------------------------------------

#### [torusKnot.q](#torusKnot-q) *<integer>*

How many times the geometry winds around a circle in the interior of the torus. Default is 3.

	myTorusKnot = new TorusKnot
		q: 10

-------------------------------------------------------

#### [torusKnot-src](#torusKnot-src) *<string/AssetImage>*

Defines the material used when rendering the torus knot.

	myTorusKnot = new TorusKnot
		src: "assets/texture.png"
