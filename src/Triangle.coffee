{entityAttribute, Entity} = require "./Entity"

class exports.Triangle extends Entity

	entity :
		name: "Triangle",
		type: "a-triangle"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "width", entityAttribute("width", "width", 1)
	@define "height", entityAttribute("height", "height", 1)
