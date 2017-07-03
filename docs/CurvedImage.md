## [Curved Image](#curvedimage)

### Extends: [Entity](#entity)

The curved image primitive creates images that bend around the user. Curved images arranged around the camera can be pleasing for legibility since each pixel sits at the same distance from the user. They can be a better choice than angled flat planes for complex layouts because they ensure a smooth surface rather than a series of awkward seams between planes.

Under the hood, a curved image is a double-sided open-ended cylinder with textures mapped to the inside of the cylinder.

	myCurvedImage = new CurvedImage
		src: "assets/image.png"
		height: 3
		radius: 5.7
		thetaLength: 72
		rotation: "0 100 0"
		scale: "0.8 0.8 0.8"

### Fine-Tuning

Ensuring that the image is not distorted by stretching requires us to carefully set the height, radius, and theta-length attributes relative to the image aspect ratio. Once those values are fine-tuned to avoid distortion, we can use scale to safely adjust the distance of the curved image relative to the user.

-------------------------------------------------------

#### [curvedImage.color](#curvedimage-color) *<color>*

Defines the color of the curved image. Default is white.

	myCurvedImage = new CurvedImage
		color: Color.blue

-------------------------------------------------------

#### [curvedImage.radius](#curvedimage-radius) *<float>*

Defines the radius of the curved image. Default is 0.8.

	myCurvedImage = new CurvedImage
		radiusTop: 2
		color: Color.indigo

-------------------------------------------------------

### [curvedImage.height](#curvedimage-height) *<float>*

Set the height of the curved image. Default is 1.

	myCurvedImage = new CurvedImage
		height: 5

-------------------------------------------------------

#### [curvedImage.src](#curvedimage-src) *<string/AssetImage>*

Defines the material used when rendering the curved image.

	myCurvedImage = new CurvedImage
		src: "assets/texture.png"

-------------------------------------------------------

### [curvedImage.transparency](#curvedimage-transparency) *<boolean>*

Set the transparency of the curved image. Default is no.

	myCurvedImage = new CurvedImage
		transparency: yes

-------------------------------------------------------

### [curvedImage.opacity](#curvedimage-opacity) *<float>*

Set the opacity of the curved image. Default is 1.

	myCurvedImage = new CurvedImage
		position: '0 0 1'
		opacity: 0.8

-------------------------------------------------------

#### [curvedImage.metalness](#curvedimage-metalness) *<float>*

Set the metalness aspect of the curved image. Default is 0.

	myCurvedImage = new CurvedImage
		radius: 10
		metalness: 0.5

-------------------------------------------------------

#### [curvedImage.repeat](#curvedimage-repeat) *<string>*

Define how many times the texture should be repeated on the curved image on the x and y axies. Default is None.

	myCurvedImage = new CurvedImage
		position: '0 0 1'
		repeat: '20 20'

-------------------------------------------------------

#### [curvedImage.roughness](#curvedimage-roughness) *<float>*

Define the roughness aspect of the curved image. Default is 0.5.

	myCurvedImage = new CurvedImage
		position: '0 0 1'
		roughness: 1

-------------------------------------------------------

#### [curvedImage.shader](#curvedimage-shader) *<shader type>*

Define the shader to use to render the curved image on the scene. Default is standard.

	myCurvedImage = new CurvedImage
		shader: Shader.standard

-------------------------------------------------------

#### [curvedImage.segmentsHeight](#curvedimage-segmentsheight) *<float>*

Defines the segements height to use when rendering the curved image. Default is 18.

	myCurvedImage = new CurvedImage
		position: '0 0 1'
		segmentsHeight: 30


-------------------------------------------------------

#### [curvedImage.segmentsRadial](#curvedimage-segmentsradial) *<float>*

Defines the segements radial to use when rendering the curved image. Default is 48.

	myCurvedImage = new CurvedImage
		position: '0 0 1'
		segmentsRadial: 42

-------------------------------------------------------

#### [curvedImage.thetaLength](#curvedimage-thetalength) *<integer>*

Defines the theta length of the curved image. Default is 270.

	myCurvedImage = new CurvedImage
		position: '0 0 1'
		thetaLength: 80
		wireframe: yes

-------------------------------------------------------

#### [curvedImage.thetaStart](#curvedimage-thetastart) *<integer>*

Defines the theta start value of the curved image. Default is 0.

	myCurvedImage = new CurvedImage
		position: '0 0 1'
		thetaLength: 80
		thetaStart: 30
		wireframe: yes
