## [Icosahedron](#icosahedron)

### Extends: [Entity](#entity)

The icosahedron primitive is used to create icosahedron.

	myIcosahedron = new Icosahedron
		color: "#FF926B"
		radius: 5

-------------------------------------------------------

#### [icosahedron.color](#icosahedron-color) *color*

Defines the color of the icosahedron. Default is white.

	myIcosahedron = new Icosahedron
		color: Color.blue

-------------------------------------------------------

#### [icosahedron.radius](#icosahedron-radius) *float*

Defines the radius of the icosahedron. Default is 1.

	myIcosahedron = new Icosahedron
		radius: 2
		color: Color.blue

-------------------------------------------------------

#### [icosahedron.src](#icosahedron-src) *string/AssetImage*

Defines the material used when rendering the icosahedron.

	myIcosahedron = new Icosahedron
		src: "assets/texture.png"
