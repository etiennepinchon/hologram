{entityAttribute, Entity} = require "./Entity"

class exports.Circle extends Entity

	entity :
		name: "Circle"
		type: "a-circle"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 1)
	@define "segments", entityAttribute("segments", "segments", 32)
	@define "thetaLength", entityAttribute("thetaLength", "theta-length", 360)
	@define "thetaStart", entityAttribute("thetaStart", "theta-start", 0)
