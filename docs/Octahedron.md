## [Octahedron](#octahedron)

### Extends: [Entity](#entity)

The octahedron geometry creates a polygon with eight equilateral triangular faces.

	myOctahedron = new Octahedron
		color: "#FF926B"
		radius: 5

-------------------------------------------------------

#### [octahedron.color](#octahedron-color) *color*

Defines the color of the octahedron. Default is white.

	myOctahedron = new Octahedron
		color: Color.blue

-------------------------------------------------------

#### [octahedron.radius](#octahedron-radius) *float*

Defines the radius of the octahedron. Default is 1.

	myOctahedron = new Octahedron
		radius: 2
		color: Color.sienna

-------------------------------------------------------

#### [octahedron.src](#octahedron-src) *string/AssetImage*

Defines the material used when rendering the octahedron.

	myOctahedron = new Octahedron
		src: "assets/texture.png"
