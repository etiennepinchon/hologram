## [Dodecahedron](#dodecahedron)

### Extends: [Entity](#entity)

The dodecahedron geometry creates a polygon with twelve equally-sized faces.

	myDodecahedron = new Dodecahedron
		color: "#FF926B"
		radius: 5

-------------------------------------------------------

#### [dodecahedron.color](#dodecahedron-color) *<color>*

Defines the color of the dodecahedron. Default is white.

	myDodecahedron = new Dodecahedron
		color: Color.blue

-------------------------------------------------------

#### [dodecahedron.radius](#dodecahedron-radius) *<float>*

Defines the radius of the dodecahedron. Default is 1.

	myDodecahedron = new Dodecahedron
		radius: 2
		color: Color.coral

-------------------------------------------------------

#### [dodecahedron.src](#dodecahedron-src) *<string/AssetImage>*

Defines the material used when rendering the dodecahedron.

	myDodecahedron = new Dodecahedron
		src: "assets/texture.png"

-------------------------------------------------------

### [dodecahedron.transparency](#dodecahedron-transparency) *<boolean>*

Set the transparency of the dodecahedron. Default is no.

	myDodecahedron = new Dodecahedron
		transparency: yes

-------------------------------------------------------

### [dodecahedron.opacity](#dodecahedron-opacity) *<float>*

Set the opacity of the dodecahedron. Default is 1.

	myDodecahedron = new Dodecahedron
		position: '0 0 1'
		opacity: 0.8

-------------------------------------------------------

#### [dodecahedron.metalness](#dodecahedron-metalness) *<float>*

Set the metalness aspect of the dodecahedron. Default is 0.

	myDodecahedron = new Dodecahedron
		radius: 10
		metalness: 0.5

-------------------------------------------------------

#### [dodecahedron.repeat](#dodecahedron-repeat) *<string>*

Define how many times the texture should be repeated on the dodecahedron on the x and y axies. Default is None.

	myDodecahedron = new Dodecahedron
		position: '0 0 1'
		repeat: '20 20'

-------------------------------------------------------

#### [dodecahedron.roughness](#dodecahedron-roughness) *<float>*

Define the roughness aspect of the dodecahedron. Default is 0.5.

	myDodecahedron = new Dodecahedron
		position: '0 0 1'
		roughness: 1

-------------------------------------------------------

#### [dodecahedron.shader](#dodecahedron-shader) *<shader type>*

Define the shader to use to render the dodecahedron on the scene. Default is standard.

	myDodecahedron = new Dodecahedron
		shader: Shader.standard

-------------------------------------------------------

#### [dodecahedron.segmentsHeight](#dodecahedron-segmentsheight) *<float>*

Defines the segements height to use when rendering the dodecahedron. Default is 18.

	myDodecahedron = new Dodecahedron
		position: '0 0 1'
		segmentsHeight: 3

-------------------------------------------------------

#### [dodecahedron.segmentsRadial](#dodecahedron-segmentsradial) *<float>*

Defines the segements radial to use when rendering the dodecahedron. Default is 36.

	myDodecahedron = new Dodecahedron
		position: '0 0 1'
		segmentsRadial: 4

-------------------------------------------------------

#### [dodecahedron.thetaLength](#dodecahedron-thetalength) *<integer>*

Defines the theta length of the dodecahedron. Default is 360.

	myDodecahedron = new Dodecahedron
		position: '0 0 1'
		thetaLength: 80
		wireframe: yes

-------------------------------------------------------

#### [dodecahedron.thetaStart](#dodecahedron-thetastart) *<integer>*

Defines the theta start value of the dodecahedron. Default is 0.

	myDodecahedron = new Dodecahedron
		position: '0 0 1'
		thetaLength: 80
		thetaStart: 30
		wireframe: yes

-------------------------------------------------------

#### [dodecahedron.wireframe](#dodecahedron-wireframe) *<boolean>*

Render the dodecahedron wireframe only. Default is false.

	myDodecahedron = new Dodecahedron
		wireframe: yes

-------------------------------------------------------

#### [dodecahedron.wireframeWidth](#dodecahedron-wireframewidth) *<integer>*

Wireframe width. Default is 2.

	myDodecahedron = new Dodecahedron
		wireframe: yes
		wireframeWidth: 4

-------------------------------------------------------

#### [dodecahedron.fog](#dodecahedron-fog) *<boolean>*

React to the scene fog. Default is true.

	myDodecahedron = new Dodecahedron
		fog: no
