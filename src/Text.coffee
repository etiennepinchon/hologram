{entityAttribute, Entity} = require "./Entity"

class exports.Text extends Entity

	entity :
		name: "Text"
		type: "a-text"

	constructor: (options)->
		super
		# Double side entity
		if options.side is undefined then @side = 'double'

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "text", entityAttribute("text", "value", "")
	@define "width", entityAttribute("width", "width", null)
	@define "height", entityAttribute("height", "height", null)
	@define "align", entityAttribute("align", "align", "left")
	@define "anchor", entityAttribute("anchor", "anchor", "center")
	@define "baseline", entityAttribute("baseline", "baseline", "center")
	@define "font", entityAttribute("font", "font", null)
	@define "lineHeight", entityAttribute("lineHeight", "line-height", 0)
	@define "whitespace", entityAttribute("whitespace", "whitespace", "normal")
	@define "color", entityAttribute("color", "color", "#FFF")
	@define "zindex", entityAttribute("zindex", "zOffset", 0.001)
