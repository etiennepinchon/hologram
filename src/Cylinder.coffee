{entityAttribute, Entity} = require "./Entity"

class exports.Cylinder extends Entity

	entity :
		name: "Cylinder",
		type: "a-cylinder"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 1)
	@define "height", entityAttribute("height", "height", 1)
	@define "openEnded", entityAttribute("openEnded", "open-ended", no)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 18)
	@define "segmentsRadial", entityAttribute("segmentsRadial", "segments-radial", 36)
	@define "thetaLength", entityAttribute("thetaLength", "theta-length", 360)
	@define "thetaStart", entityAttribute("thetaStart", "theta-start", 0)
