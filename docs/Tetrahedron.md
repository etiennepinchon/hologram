## [Tetrahedron](#tetrahedron)

### Extends: [Entity](#entity)

The tetrahedron geometry creates a polygon with four triangular faces.

	myTetrahedron = new Tetrahedron
		color: "#FF926B"
		radius: 5

-------------------------------------------------------

#### [tetrahedron.color](#tetrahedron-color) *<color>*

Defines the color of the tetrahedron. Default is white.

	myTetrahedron = new Tetrahedron
		color: Color.blue

-------------------------------------------------------

#### [tetrahedron.radius](#tetrahedron-radius) *<float>*

Defines the radius of the tetrahedron. Default is 1.

	myTetrahedron = new Tetrahedron
		radius: 2
		color: Color.blue

-------------------------------------------------------

#### [tetrahedron.src](#tetrahedron-src) *<string/AssetImage>*

Defines the material used when rendering the tetrahedron.

	myTetrahedron = new Tetrahedron
		src: "assets/texture.png"
