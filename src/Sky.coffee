{entityAttribute, Entity} = require "./Entity"

class exports.Sky extends Entity

	entity :
		name: "Sky"
		type: "a-sky"

	constructor: (options)->
		if not options.side then options.side = 'double'
		super
		
	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 5000)
	@define "segmentsWidth", entityAttribute("segmentsWidth", "segments-width", 64)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 20)
	@define "thetaLength", entityAttribute("thetaLength", "theta-length", 180)
	@define "thetaStart", entityAttribute("thetaStart", "theta-start", 0)
	@define "phiLength", entityAttribute("phiLength", "phi-length", 360)
	@define "phiStart", entityAttribute("phiStart", "phi-start", 0)
