{entityAttribute, Entity} = require "./Entity"

class exports.Image extends Entity

	entity :
		name: "Image"
		type: "a-image"

	#-------------------------------------------------------
	# PROPERTIES

	@define "width", entityAttribute("width", "width", 1)
	@define "height", entityAttribute("height", "height", 1)
	@define "segmentsWidth", entityAttribute("segmentsWidth", "segments-width", 1)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 1)
