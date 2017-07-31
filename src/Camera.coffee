{entityAttribute, Entity} = require "./Entity"

class exports.Camera extends Entity

	entity :
		name: "Camera"
		type: "a-camera"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "far", entityAttribute("far", "far", 10000)
	@define "fov", entityAttribute("fov", "fov", 80)
	@define "near", entityAttribute("near", "near", .5)
	@define "lookControls", entityAttribute("lookControls", "look-controls", yes)
	@define "userHeight", entityAttribute("userHeight", "user-height", 1.6)
	@define "wasdControls", entityAttribute("wasdControls", "wasd-controls-enabled", yes)
	@define "active", entityAttribute("active", "active", yes)
	@define "mouseCursor", entityAttribute("mouseCursor", "mouse-cursor", yes)
