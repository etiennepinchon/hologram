## [Image](#image)

### Extends: [Entity](#entity)

The image primitive shows an image on a flat plane.

	myImage = new Image
		width: 2
		height: 2
		src: "assets/image.png"
		
-------------------------------------------------------

#### [image.width](#image-width) *float*

Set the width of the plane. Default is 1.

	myImage = new Image
		width: 2
		src: "assets/image.png"

-------------------------------------------------------

#### [image.height](#image-height) *float*

Set the height of the image. Default is 1.

	myImage = new Image
		height: 5
		src: "assets/image.png"

-------------------------------------------------------

#### [image.src](#image-src) *string/AssetImage*

Defines the material used when rendering the image.
	
	myImage = new Image
		src: "assets/texture.png"

-------------------------------------------------------

#### [image.transparency](#image-transparency) *boolean*

Set the transparency of the image. Default is no.

	myImage = new Image
		transparency: yes
		src: "assets/image.png"

-------------------------------------------------------

#### [image.opacity](#image-opacity) *float*

Set the opacity of the image. Default is 1.

	myImage = new Image
		position: '0 0 1'
		opacity: 0.8
		src: "assets/image.png"
