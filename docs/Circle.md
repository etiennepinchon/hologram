## [Circle](#cicle)

### Extends: [Entity](#entity)

The circle geometry creates flat two-dimensional circles. These can be complete circles or partial circles (like Pac-Man).

	myCircle = new Circle
		color: "#CCC"
		radius: "20"

-------------------------------------------------------

#### [circle.color](#circle-color) *<color>*

Defines the color of the circle. Default is white.

	myCircle = new Circle
		color: Color.blue

-------------------------------------------------------

#### [circle.radius](#circle-radius) *<integer>*

Defines the radius of the circle. Default is 1.

	myCircle = new Circle
		radius: 3
		color: Color.red

-------------------------------------------------------

#### [circle.src](#circle-src) *<string/AssetImage>*

Defines the material used when rendering the circle.

	myCircle = new Circle
		src: "assets/texture.png"

	myTexture = AssetImage "assets/texture2.png"
	myCircle = new Circle
		src: myTexture

-------------------------------------------------------

### [circle.transparency](#circle-transparency) *<boolean>*

Set the transparency of the circle. Default is no.

	myCicle = new Circle
		transparency: yes

-------------------------------------------------------

### [circle.opacity](#circle-opacity) *<float>*

Set the opacity of the circle. Default is 1.

	myCicle = new Circle
		position: '0 0 1'
		opacity: 0.8

-------------------------------------------------------

#### [circle.metalness](#circle-metalness) *<float>*

Set the metalness aspect of the circle. Default is 0.

	myCicle = new Circle
		radius: 10
		metalness: 0.5

-------------------------------------------------------

#### [circle.repeat](#circle-repeat) *<string>*

Define how many times the texture should be repeated on the circle on the x and y axies. Default is None.

	myCicle = new Circle
		position: '0 0 1'
		repeat: '20 20'

-------------------------------------------------------

#### [circle.roughness](#circle-roughness) *<float>*

Define the roughness aspect of the circle. Default is 0.5.

	myCicle = new Circle
		position: '0 0 1'
		roughness: 1

-------------------------------------------------------

#### [circle.shader](#circle-shader) *<shader type>*

Define the shader to use to render the circle on the scene. Default is standard.

	myCicle = new Circle
		shader: Shader.standard

-------------------------------------------------------

#### [circle.segments](#circle-segments) *<integer>*

Defines the number of segments of the circle. Default is 32.

	myCicle = new Circle
		segments: 42

-------------------------------------------------------

#### [circle.thetaLength](#circle-thetalength) *<integer>*

Defines the theta length of the circle. Default is 360.

	myCicle = new Circle
		position: '0 0 1'
		thetaLength: 80
		wireframe: yes

-------------------------------------------------------

#### [circle.thetaStart](#circle-thetastart) *<integer>*

Defines the theta start value of the circle. Default is 0.

	myCicle = new Circle
		position: '0 0 1'
		thetaLength: 80
		thetaStart: 30
		wireframe: yes
