{entityAttribute, Entity} = require "./Entity"

class exports.Icosahedron extends Entity

	entity :
		name: "Icosahedron"
		type: "a-icosahedron"

	#-------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 1)
