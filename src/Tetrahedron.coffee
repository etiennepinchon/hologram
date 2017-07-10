{entityAttribute, Entity} = require "./Entity"

class exports.Tetrahedron extends Entity

	entity :
		name: "Tetrahedron"
		type: "a-tetrahedron"

	#-------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 1)
