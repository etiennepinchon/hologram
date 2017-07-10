{entityAttribute, Entity} = require "./Entity"

class exports.CurvedImage extends Entity

	entity :
		name: "CurvedImage",
		type: "a-curvedimage"

	#-------------------------------------------------------
	# PROPERTIES

	@define "height", entityAttribute("height", "height", 1)
	@define "radius", entityAttribute("radius", "radius", .8)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 18)
	@define "segmentsRadial", entityAttribute("segmentsRadial", "segments-radial", 48)
	@define "thetaLength", entityAttribute("thetaLength", "theta-length", 270)
	@define "thetaStart", entityAttribute("thetaStart", "theta-start", 0)
