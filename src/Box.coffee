{entityAttribute, Entity} = require "./Entity"

class exports.Box extends Entity

	entity :
		name: "Box",
		type: "a-box"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "width", entityAttribute("width", "width", 1)
	@define "height", entityAttribute("height", "height", 1)
	@define "depth", entityAttribute("depth", "depth", 1)
	@define "segmentsWidth", entityAttribute("segmentsWidth", "segments-width", 1)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 1)
	@define "segmentsDepth", entityAttribute("segmentsDepth", "segments-depth", 1)
