## [Cone](#cone)

### Extends: [Entity](#entity)

The cone geometry is a cylinder geometry that have different top and bottom radii.

	myCone = new Cone
		color: Color.tomato
		radiusTop: 0.5
		radiusBottom: 2

-------------------------------------------------------

#### [cone.color](#cone-color) *<color>*

Defines the color of the cone. Default is white.

	myCone = new Cone
		color: Color.azure

-------------------------------------------------------

#### [cone.radiusTop](#cone-radiustop) *<float>*

Defines the top radius of the cone. Default is 0.8.

	myCone = new Cone
		radiusTop: 2
		color: Color.deeppink

-------------------------------------------------------

#### [cone.radiusBottom](#cone-radiusbottom) *<float>*

Defines the bottom radius of the cone. Default is 1.

	myCone = new Cone
		radiusTop: 2
		radiusBottom: 3
		color: Color.blue

-------------------------------------------------------

#### [cone.src](#cone-src) *<string/AssetImage>*

Defines the material used when rendering the cone.

	myCone = new Cone
		src: "assets/texture.png"

-------------------------------------------------------

### [cone.transparency](#cone-transparency) *<boolean>*

Set the transparency of the cone. Default is no.

	myCone = new Cone
		transparency: yes

-------------------------------------------------------

### [cone.opacity](#cone-opacity) *<float>*

Set the opacity of the cone. Default is 1.

	myCone = new Cone
		position: '0 0 1'
		opacity: 0.8

-------------------------------------------------------

#### [cone.metalness](#cone-metalness) *<float>*

Set the metalness aspect of the cone. Default is 0.

	myCone = new Cone
		radius: 10
		metalness: 0.5

-------------------------------------------------------

#### [cone.repeat](#cone-repeat) *<string>*

Define how many times the texture should be repeated on the cone on the x and y axies. Default is None.

	myCone = new Cone
		position: '0 0 1'
		repeat: '20 20'

-------------------------------------------------------

#### [cone.roughness](#cone-roughness) *<float>*

Define the roughness aspect of the cone. Default is 0.5.

	myCone = new Cone
		position: '0 0 1'
		roughness: 1

-------------------------------------------------------

#### [cone.shader](#cone-shader) *<shader type>*

Define the shader to use to render the cone on the scene. Default is standard.

	myCone = new Cone
		shader: Shader.standard

-------------------------------------------------------

#### [cone.segmentsHeight](#cone-segmentsheight) *<float>*

Defines the segements height to use when rendering the cone. Default is 18.

	myCone = new Cone
		position: '0 0 1'
		segmentsHeight: 3

-------------------------------------------------------

#### [cone.segmentsRadial](#cone-segmentsradial) *<float>*

Defines the segements radial to use when rendering the cone. Default is 36.

	myCone = new Cone
		position: '0 0 1'
		segmentsRadial: 4

-------------------------------------------------------

#### [cone.thetaLength](#cone-thetalength) *<integer>*

Defines the theta length of the cone. Default is 180.

	myCone = new Cone
		position: '0 0 1'
		thetaLength: 80
		wireframe: yes

-------------------------------------------------------

#### [cone.thetaStart](#cone-thetastart) *<integer>*

Defines the theta start value of the cone. Default is 0.

	myCone = new Cone
		position: '0 0 1'
		thetaLength: 80
		thetaStart: 30
		wireframe: yes

-------------------------------------------------------

#### [cone.wireframe](#cone-wireframe) *<boolean>*

Render the cone wireframe only. Default is false.

	myCone = new Cone
		wireframe: yes

-------------------------------------------------------

#### [cone.wireframeWidth](#cone-wireframewidth) *<integer>*

Wireframe width. Default is 2.

	myCone = new Cone
		wireframe: yes
		wireframeWidth: 4

-------------------------------------------------------

#### [cone.fog](#cone-fog) *<boolean>*

React to the scene fog. Default is true.

	myCone = new Cone
		fog: no
