{entityAttribute, Entity} = require "./Entity"

class exports.Torus extends Entity

	entity :
		name: "Torus"
		type: "a-torus"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 1)
	@define "radiusTubular", entityAttribute("radiusTubular", "radius-tubular", .2)
	@define "segmentsRadial", entityAttribute("segmentsRadial", "segments-radial", 0)
	@define "segmentsTubular", entityAttribute("segmentsTubular", "segments-tubular", 32)
