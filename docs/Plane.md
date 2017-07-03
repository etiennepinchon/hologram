## [Plane](#plane)

### Extends: [Entity](#entity)

The plane geometry creates a flat surface.

	myPlane = new Plane
		width: 20
		height: 20
		color: "#CCC"

-------------------------------------------------------

### [plane.width](#plane-width) *<float>*

Set the width of the plane. Default is 1.

	myPlane = new Plane
		width: 2

-------------------------------------------------------

### [plane.height](#plane-height) *<float>*

Set the height of the plane. Default is 1.

	myPlane = new Plane
		height: 5

-------------------------------------------------------

#### [plane.color](#plane-color) *<color>*

Defines the color of the plane. Default is white.

	myPlane = new Plane
		color: Color.aquamarine

-------------------------------------------------------

#### [plane.src](#plane-src) *<string/AssetImage>*

Defines the material used when rendering the plane.

	myPlane = new Plane
		src: "assets/texture.png"

-------------------------------------------------------

### [plane.transparency](#plane-transparency) *<boolean>*

Set the transparency of the plane. Default is no.

	myPlane = new Plane
		transparency: yes

-------------------------------------------------------

### [plane.opacity](#plane-opacity) *<float>*

Set the opacity of the plane. Default is 1.

	myPlane = new Plane
		position: '0 0 1'
		opacity: 0.8

-------------------------------------------------------

#### [plane.metalness](#plane-metalness) *<float>*

Set the metalness aspect of the plane. Default is 0.

	myPlane = new Plane
		radius: 10
		metalness: 0.5

-------------------------------------------------------

#### [plane.repeat](#plane-repeat) *<string>*

Define how many times the texture should be repeated on the plane on the x and y axies. Default is None.

	myPlane = new Plane
		position: '0 0 1'
		repeat: '20 20'

-------------------------------------------------------

#### [plane.roughness](#plane-roughness) *<float>*

Define the roughness aspect of the plane. Default is 0.5.

	myPlane = new Plane
		position: '0 0 1'
		roughness: 1

-------------------------------------------------------

#### [plane.shader](#plane-shader) *<shader type>*

Define the shader to use to render the plane on the scene. Default is standard.

	myPlane = new Plane
		shader: standard

-------------------------------------------------------

#### [plane.wireframe](#plane-wireframe) *<boolean>*

Render the plane wireframe only. Default is false.

	myPlane = new Plane
		wireframe: yes

-------------------------------------------------------

#### [plane.wireframeWidth](#plane-wireframewidth) *<integer>*

Wireframe width. Default is 2.

	myPlane = new Plane
		wireframe: yes
		wireframeWidth: 4

-------------------------------------------------------

#### [plane.fog](#plane-fog) *<boolean>*

React to the scene fog. Default is true.

	myPlane = new Plane
		fog: no
