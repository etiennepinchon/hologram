{entityAttribute, Entity} = require "./Entity"

class exports.VideoSphere extends Entity

	entity :
		name: "VideoSphere"
		type: "a-videosphere"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "radius", entityAttribute("radius", "radius", 5000)
	@define "segmentsWidth", entityAttribute("segmentsWidth", "segments-width", 64)
	@define "segmentsHeight", entityAttribute("segmentsHeight", "segments-height", 64)
	@define "crossOrigin", entityAttribute("crossOrigin", "crossOrigin", "anonymous")
	@define "autoplay", entityAttribute("autoplay", "autoplay", no)
	@define "loop", entityAttribute("loop", "loop", no)
	@define "volume", entityAttribute("volume", "volume", 1)
