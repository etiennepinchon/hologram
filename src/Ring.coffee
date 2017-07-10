{entityAttribute, Entity} = require "./Entity"

class exports.Ring extends Entity

	entity :
		name: "Ring"
		type: "a-ring"

	#-------------------------------------------------------
	# PROPERTIES

	@define "radiusInner", entityAttribute("radiusInner", "radius-inner", .8)
	@define "radiusOuter", entityAttribute("radiusOuter", "radius-outer", 1.2)
	@define "segmentsPhi", entityAttribute("segmentsPhi", "segments-phi", 10)
	@define "segmentsTheta", entityAttribute("segmentsTheta", "segments-theta", 32)
	@define "thetaLength", entityAttribute("thetaLength", "theta-length", 360)
	@define "thetaStart", entityAttribute("thetaStart", "theta-start", 0)
