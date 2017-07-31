{entityAttribute, Entity} = require "./Entity"

class exports.Sky extends Entity

	entity :
		name: "Sky"
		type: "a-sky"

	constructor: (options)->
		super
		@side = 'double'

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 5000)
	@define "segmentsWidth", entityAttribute("segmentsWidth", "segments-width", 64)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 20)
	@define "thetaLength", entityAttribute("thetaLength", "theta-length", 180)
	@define "thetaStart", entityAttribute("thetaStart", "theta-start", 0)
	@define "phiLength", entityAttribute("phiLength", "phi-length", 360)
	@define "phiStart", entityAttribute("phiStart", "phi-start", 0)
