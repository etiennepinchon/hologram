{entityAttribute, Entity} = require "./Entity"

class exports.Line extends Entity

	entity :
		name: "Line",
		type: "a-line"

	#-------------------------------------------------------
	# PROPERTIES

	@define "start", entityAttribute("start", "start", null)
	@define "end", entityAttribute("end", "end", null)
