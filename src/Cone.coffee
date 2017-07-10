{entityAttribute, Entity} = require "./Entity"

class exports.Cone extends Entity

	entity :
		name: "Cone",
		type: "a-cone"

	#-------------------------------------------------------
	# PROPERTIES

	@define "radiusTop", entityAttribute("radiusTop", "radius-top", .8)
	@define "radiusBottom", entityAttribute("radiusBottom", "radius-bottom", 1)
	@define "openEnded", entityAttribute("openEnded", "open-ended", no)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 18)
	@define "segmentsRadial", entityAttribute("segmentsRadial", "segments-radial", 36)
	@define "thetaLength", entityAttribute("thetaLength", "theta-length", 360)
	@define "thetaStart", entityAttribute("thetaStart", "theta-start", 0)
