{entityAttribute, Entity} = require "./Entity"

class exports.Plane extends Entity

	entity :
		name: "Plane"
		type: "a-plane"

	constructor: (options={})->
		if not options.rotation or not options.rotationX
			options.rotationX = -90
		super

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "width", entityAttribute("width", "width", 1)
	@define "height", entityAttribute("height", "height", 1)
	@define "segmentsWidth", entityAttribute("segmentsWidth", "segments-width", 1)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 1)
