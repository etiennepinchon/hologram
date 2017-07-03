## [Ring](#ring)

### Extends: [Entity](#entity)

The ring geometry creates a flat ring, like a CD.

	myRing = new Ring
		color: teal
		radiusInner: 1
		radiusOuter: 2

-------------------------------------------------------

#### [ring.color](#ring-color) *<color>*

Defines the color of the ring. Default is white.

	myRing = new Ring
		color: Color.olive

-------------------------------------------------------

#### [ring.radiusInner](#ring-radiusinner) *<float>*

Defines the inner radius of the ring. Default is 1.

	myRing = new Ring
		radiusInner: 1.2
		color: Color.blue

-------------------------------------------------------

#### [ring.radiusOuter](#ring-radiusouter) *<float>*

Defines the outer radius of the ring. Default is 1.

	myRing = new Ring
		radiusOuter: 2.4
		color: Color.blue

-------------------------------------------------------

#### [ring.src](#ring-src) *<string/AssetImage>*

Defines the material used when rendering the ring.

	myRing = new Ring
		src: "assets/texture.png"

-------------------------------------------------------

### [ring.transparency](#ring-transparency) *<boolean>*

Set the transparency of the ring. Default is no.

	myRing = new Ring
		transparency: yes

-------------------------------------------------------

### [ring.opacity](#ring-opacity) *<float>*

Set the opacity of the ring. Default is 1.

	myRing = new Ring
		position: '0 0 1'
		opacity: 0.8

-------------------------------------------------------

#### [ring.metalness](#ring-metalness) *<float>*

Set the metalness aspect of the ring. Default is 0.

	myRing = new Ring
		radius: 10
		metalness: 0.5

-------------------------------------------------------

#### [ring.repeat](#ring-repeat) *<string>*

Define how many times the texture should be repeated on the ring on the x and y axies. Default is None.

	myRing = new Ring
		position: '0 0 1'
		repeat: '20 20'

-------------------------------------------------------

#### [ring.roughness](#ring-roughness)  *<float>*

Define the roughness aspect of the ring. Default is 0.5.

	myRing = new Ring
		position: '0 0 1'
		roughness: 1

-------------------------------------------------------

#### [ring.shader](#ring-shader) *<shader type>*

Define the shader to use to render the ring on the scene. Default is standard.

	myRing = new Ring
		shader: Shader.standard

-------------------------------------------------------

#### [ring.side](#ring-side) *<string>*

Defines which of the face sides will be rendered. Default is front, can be either front, back or both.

	myRing = new Ring
		side: Side.both

-------------------------------------------------------

#### [ring.segmentsTheta](#ring-segmentstheta) *<integer>*

Number of segments. A higher number means the ring will be more round. Default is 32.

	myRing = new Ring
		segmentsTheta: 42

-------------------------------------------------------

#### [ring.segmentsPhi](#ring-segmentsphi) *<integer>*

Number of triangles within each face defined by segmentsTheta. Default is 8.

	myRing = new Ring
		segmentsPhi: 12

-------------------------------------------------------

#### [ring.thetaLength](#ring-thetalength) *<integer>*

Starting angle in degrees of the ring. Default is 180.

	myRing = new Ring
		position: '0 0 1'
		thetaLength: 80
		wireframe: yes

-------------------------------------------------------

#### [ring.thetaStart](#ring-thetastart) *<integer>*

Central angle in degrees of the ring. Default is 0.

	myRing = new Ring
		position: '0 0 1'
		thetaLength: 80
		thetaStart: 30
		wireframe: yes
