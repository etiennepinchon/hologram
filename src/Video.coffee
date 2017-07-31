{entityAttribute, Entity} = require "./Entity"

class exports.Video extends Entity

	entity :
		name: "Video"
		type: "a-video"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "width", entityAttribute("width", "width", 3)
	@define "height", entityAttribute("height", "height", 1.75)
	@define "autoplay", entityAttribute("autoplay", "autoplay", no)
	@define "loop", entityAttribute("loop", "loop", no)
	@define "volume", entityAttribute("volume", "volume", 1)
