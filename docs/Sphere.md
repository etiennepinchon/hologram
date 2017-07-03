## [Sphere](#sphere)

### Extends: [Entity](#entity)

The sphere geometry creates spheres (e.g., balls).

	myShere = new Sphere
		color: Color.yellow
		radius: 5

-------------------------------------------------------

#### [sphere.color](#sphere-color) *<color>*

Defines the color of the sphere. Default is white.

	mySphere = new Sphere
		color: Color.blue

-------------------------------------------------------

#### [sphere.radius](#sphere-radius) *<integer>*

Defines the radius of the sphere. Default is 1.

	mySphere = new Sphere
		radius: 2
		color: Color.blue

-------------------------------------------------------

#### [sphere.src](#sphere-src) *<string/AssetImage>*

Defines the material used when rendering the sphere.

	myShere = new Sphere
		src: "assets/texture.png"

-------------------------------------------------------

### [sphere.transparency](#sphere-transparency) *<boolean>*

Set the transparency of the sphere. Default is no.

	mySphere = new Sphere
		transparency: yes

-------------------------------------------------------

### [sphere.opacity](#sphere-opacity) *<float>*

Set the opacity of the sphere. Default is 1.

	mySphere = new Sphere
		position: '0 0 1'
		opacity: 0.8

-------------------------------------------------------

#### [sphere.metalness](#sphere-metalness) *<float>*

Set the metalness aspect of the sphere. Default is 0.

	mySphere = new Sphere
		radius: 10
		metalness: 0.5

-------------------------------------------------------

#### [sphere.repeat](#sphere-repeat) *<string>*

Define how many times the texture should be repeated on the sphere on the x and y axies. Default is None.

	mySphere = new Sphere
		position: '0 0 1'
		repeat: '20 20'

-------------------------------------------------------

#### [sphere.roughness](#sphere-roughness) *<float>*

Define the roughness aspect of the sphere. Default is 0.5.

	mySphere = new Sphere
		position: '0 0 1'
		roughness: 1

-------------------------------------------------------

#### [sphere.shader](#sphere-shader) *<shader type>*

Define the shader to use to render the sphere on the scene. Default is standard.

	mySphere = new Sphere
		shader: Shader.standard

-------------------------------------------------------

#### [sphere.side](#sphere-side) *<string>*

Defines which of the face sides will be rendered. Default is front, can be either front, back or both.

	mySphere = new Sphere
		position: '0 0 1'
		side: Side.both

-------------------------------------------------------

#### [sphere.segmentsWidth](#sphere-segmentswidth) *<integer>*

Defines the segements width to use when rendering the sphere. Default is 18.

	mySphere = new Sphere
		position: '0 0 1'
		segmentsWidth: 4

-------------------------------------------------------

#### [sphere.segmentsHeight](#sphere-segmentsheight) *<integer>*

Defines the segements height to use when rendering the sphere. Default is 36.

	mySphere = new Sphere
		position: '0 0 1'
		segmentsHeight: 3

-------------------------------------------------------

#### [sphere.thetaLength](#sphere-thetalength) *<integer>*

Defines the theta length of the sphere. Default is 180.

	mySphere = new Sphere
		position: '0 0 1'
		thetaLength: 80
		wireframe: yes

-------------------------------------------------------

#### [sphere.thetaStart](#sphere-thetastart) *<integer>*

Defines the theta start value of the sphere. Default is 0.

	mySphere = new Sphere
		position: '0 0 1'
		thetaLength: 80
		thetaStart: 30
		wireframe: yes

-------------------------------------------------------

#### [sphere.phiLength](#sphere-philength) *<integer>*

Defines the phi length of the sphere. Default is 360.

	mySphere = new Sphere
		position: '0 0 1'
		phiLength: 180
		wireframe: yes

-------------------------------------------------------

#### [sphere.phiStart](#sphere-phistart) *<integer>*

Defines the phi start value of the sphere. Default is 0.

	mySphere = new Sphere
		position: '0 0 1'
		phiLength: 180
		phiStart: 30
		wireframe: yes

-------------------------------------------------------

#### [sphere.wireframe](#sphere-wireframe) *<boolean>*

Render the sphere wireframe only. Default is false.

	mySphere = new Sphere
		wireframe: yes

-------------------------------------------------------

#### [sphere.wireframeWidth](#sphere-wireframewidth) *<integer>*

Wireframe width. Default is 2.

	mySphere = new Sphere
		wireframe: yes
		wireframeWidth: 4

-------------------------------------------------------

#### [sphere.fog](#sphere-fog) *<boolean>*

React to the scene fog. Default is true.

	mySphere = new Sphere
		fog: no
