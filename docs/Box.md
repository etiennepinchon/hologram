## [Box](#box)

### Extends: [Entity](#entity)

Box creates shapes such as boxes, cubes, or walls. It is an entity that prescribes the geometry with its geometric primitive set to box.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'

-------------------------------------------------------

### [box.width](#box-width) *<float>*

Set the width of the box. Default is 1.

	myBox = new Box
		width: 2

-------------------------------------------------------

### [box.height](#box-height) *<float>*

Set the height of the box. Default is 1.

	myBox = new Box
		height: 5

-------------------------------------------------------

### [box.depth](#box-depth) *<float>*

Set the depth of the box. Default is 1.

	myBox = new Box
		depth: 3

-------------------------------------------------------

#### [box.color](#box-color) *<color>*

Defines the color of the cube. Default is white.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		color: Color.blue

-------------------------------------------------------

### [box.transparency](#box-transparency) *<boolean>*

Set the transparency of the box. Default is no.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		transparency: yes

-------------------------------------------------------

### [box.opacity](#box-opacity) *<float>*

Set the opacity of the box. Default is 1.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		opacity: 0.8

-------------------------------------------------------

#### [box.metalness](#box-metalness) *<float>*

Set the metalness aspect of the box. Default is 0.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		metalness: 0.5

-------------------------------------------------------

#### [box.repeat](#box-repeat) *<string>*

Define how many times the texture should be repeated on the cube on the x and y axies. Default is None.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		repeat: '20 20'

-------------------------------------------------------

#### [box.roughness](#box-roughness) *<float>*

Define the roughness aspect of the cube. Default is 0.5.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		roughness: 1

-------------------------------------------------------

#### [box.shader](#box-shader) *<string>*

Define the shader to use to render the cube on the scene. Default is standard.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		shader: Shader.standard

-------------------------------------------------------

#### [box.side](#box-side) *<string>*

Defines which of the face sides will be rendered. Default is front, can be either front, back or double.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		side: Side.double

-------------------------------------------------------

#### [box.segmentsWidth](#box-segmentswidth) *<integer>*

Defines the segements width to use when rendering the cube. Default is 1.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		segmentsWidth: 4

-------------------------------------------------------

#### [box.segmentsHeight](#box-segmentsheight) *<integer>*

Defines the segements height to use when rendering the cube. Default is 1.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		segmentsHeight: 3

-------------------------------------------------------

#### [box.segmentsDepth](#box-segmentsdepth) *<integer>*

Defines the segements depth to use when rendering the cube. Default is 1.

	myBox = new Box
		width: 1
		height: 1
		depth: 1
		position: '0 0 1'
		segmentsDepth: 5

-------------------------------------------------------

#### [box.wireframe](#box-wireframe) *<boolean>*

Render the plane wireframe only. Default is false.

	myBox = new Box
		wireframe: yes

-------------------------------------------------------

#### [box.wireframeWidth](#box-wireframewidth) *<integer>*

Wireframe width. Default is 2.

	myBox = new Box
		wireframe: yes
		wireframeWidth: 4

-------------------------------------------------------

#### [box.fog](#box-fog) *<boolean>*

React to the scene fog. Default is true.

	myBox = new Box
		fog: no
