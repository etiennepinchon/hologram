## [Cylinder](#cylinder)

### Extends: [Entity](#entity)

The cylinder geometry creates cylinders in the traditional sense like a Coca-Cola™ can, but it can also define shapes such as tubes and curved surfaces.

	# Basic cylinder
	myCylinder = new Cylinder
		color: Color.crimson
		height: 3
		radius: 1.5

	# Hexagon
	hexagon = new Cylinder
		color: Color.cyan
		segmentsRadial: 8

	# Pac-Man
	pacMan = new Cylinder
		color: Color.yellow
		thetaStart: 50
		thetaLength: 280
		side: Side.double

	# Green pipe
	hexagon = new Cylinder
		color: Color.green
		openEnded: yes

-------------------------------------------------------

#### [cylinder.color](#cylinder-color)  *color*

Defines the color of the cylinder. Default is white.

	myCylinder = new Cylinder
		color: Color.blue

-------------------------------------------------------

#### [cylinder.radius](#cylinder-radius) *float*

Defines the radius of the cylinder. Default is 1.

	myCylinder = new Cylinder
		radius: 2
		color: Color.blue

#### [cylinder.height](#cylinder-height) *float*

Set the height of the cylinder. Default is 2.

	myCylinder = new Cylinder
		height: 5

#### [cylinder.openEnded](#cylinder-openended) *boolean*

Whether the ends of the cylinder are open (true) or capped (false).

	myCylinder = new Cylinder
		openEnded: true

-------------------------------------------------------

#### [cylinder.src](#cylinder-src) *string/AssetImage*

Defines the material used when rendering the cylinder.

	myCone = new Cone
		src: "assets/texture.png"

-------------------------------------------------------

#### [cylinder.transparency](#cylinder-transparency) *boolean*

Set the transparency of the cylinder. Default is no.

	myCone = new Cone
		transparency: yes

-------------------------------------------------------

#### [cylinder.opacity](#cylinder-opacity) *float*

Set the opacity of the cylinder. Default is 1.

	myCone = new Cone
		position: '0 0 1'
		opacity: 0.8

-------------------------------------------------------

#### [cylinder.metalness](#cylinder-metalness) *float*

Set the metalness aspect of the cylinder. Default is 0.

	myCone = new Cone
		radius: 10
		metalness: 0.5

-------------------------------------------------------

#### [cylinder.repeat](#cylinder-repeat) *string*

Define how many times the texture should be repeated on the cylinder on the x and y axies. Default is None.

	myCone = new Cone
		position: '0 0 1'
		repeat: '20 20'

-------------------------------------------------------

#### [cylinder.roughness](#cylinder-roughness) *float*

Define the roughness aspect of the cylinder. Default is 0.5.

	myCone = new Cone
		position: '0 0 1'
		roughness: 1

-------------------------------------------------------

#### [cylinder.shader](#cylinder-shader) *shader*

Define the shader to use to render the cylinder on the scene. Default is standard.

	myCone = new Cone
		shader: Shader.standard

-------------------------------------------------------

#### [cylinder.segmentsHeight](#cylinder-segmentsheight) *float*

Defines the segements height to use when rendering the cylinder. Default is 18.

	myCone = new Cone
		position: '0 0 1'
		segmentsHeight: 3

-------------------------------------------------------

#### [cylinder.segmentsRadial](#cylinder-segmentsradial) *float*

Defines the segements radial to use when rendering the cylinder. Default is 36.

	myCone = new Cone
		position: '0 0 1'
		segmentsRadial: 4

-------------------------------------------------------

#### [cylinder.thetaLength](#cylinder-thetalength) *integer*

Defines the theta length of the cylinder. Default is 180.

	myCone = new Cone
		position: '0 0 1'
		thetaLength: 80
		wireframe: yes

-------------------------------------------------------

#### [cylinder.thetaStart](#cylinder-thetastart) *integer*

Defines the theta start value of the cylinder. Default is 0.

	myCone = new Cone
		position: '0 0 1'
		thetaLength: 80
		thetaStart: 30
		wireframe: yes

-------------------------------------------------------

#### [cylinder.wireframe](#cylinder-wireframe) *boolean*

Render the cylinder wireframe only. Default is false.

	myCone = new Cone
		wireframe: yes

-------------------------------------------------------

#### [cylinder.wireframeWidth](#cylinder-wireframewidth) *integer*

Wireframe width. Default is 2.

	myCone = new Cone
		wireframe: yes
		wireframeWidth: 4

-------------------------------------------------------

#### [cylinder.fog](#cylinder-fog) *boolean*

React to the scene fog. Default is true.

	myCone = new Cone
		fog: no
