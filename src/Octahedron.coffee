{entityAttribute, Entity} = require "./Entity"

class exports.Octahedron extends Entity

	entity :
		name: "Octahedron"
		type: "a-octahedron"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 1)
