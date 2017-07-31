{entityAttribute, Entity} = require "./Entity"

class exports.Sphere extends Entity

	entity :
		name: "Sphere"
		type: "a-sphere"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 1)
	@define "segmentsWidth", entityAttribute("segmentsWidth", "segments-width", 36)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 18)
	@define "thetaLength", entityAttribute("thetaLength", "theta-length", 180)
	@define "thetaStart", entityAttribute("thetaStart", "theta-start", 0)
	@define "phiLength", entityAttribute("phiLength", "phi-length", 360)
	@define "phiStart", entityAttribute("phiStart", "phi-start", 0)
