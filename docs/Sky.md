## [Sky](#sky)

### Extends: [Entity](#entity)

The sky primitive adds a background color or 360° image to a scene. A sky is a large sphere with a color or texture mapped to the inside.

With an image as a background:

	myTexture = AssetImage "assets/sky.png"
	mySky = new Sky
		src: myTexture

With a plain color as a background:

	mySky = new Sky
		color: "#6EBAA7"

-------------------------------------------------------

#### [sky.color](#sky-color) *color*

Defines the color of the sky. Default is white.

	mySky = new Sky
		color: Color.skyblue

-------------------------------------------------------

#### [sky.radius](#sky-radius) *integer*

Defines the radius of the sky. Default is 5000.

	myBox = new Box
		radius: 4000
		color: Color.springgreen

-------------------------------------------------------

#### [sky.src](#sky-src) *string/AssetImage/AssetVideo*

Defines the material used when rendering the sky.

	mySky = new Sky
		src: "assets/sky.png"
