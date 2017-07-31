{entityAttribute, Entity} = require "./Entity"

class exports.TorusKnot extends Entity

	entity :
		name: "TorusKnot"
		type: "a-torus-knot"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 1)
	@define "radiusTubular", entityAttribute("radiusTubular", "radius-tubular", .2)
	@define "segmentsRadial", entityAttribute("segmentsRadial", "segments-radial", 0)
	@define "segmentsTubular", entityAttribute("segmentsTubular", "segments-tubular", 32)
