{entityAttribute, Entity} = require "./Entity"

class exports.Dodecahedron extends Entity

	entity :
		name: "Dodecahedron"
		type: "a-dodecahedron"

	#-------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 1)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 18)
	@define "segmentsRadial", entityAttribute("segmentsRadial", "segments-radial", 36)
	@define "thetaLength", entityAttribute("thetaLength", "theta-length", 360)
	@define "thetaStart", entityAttribute("thetaStart", "theta-start", 0)
