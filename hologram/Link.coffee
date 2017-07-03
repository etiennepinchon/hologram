{entityAttribute, Entity} = require "./Entity"

class exports.Link extends Entity

	entity :
		name: "Link",
		type: "a-link"

	#-------------------------------------------------------
	# PROPERTIES

	@define "href", entityAttribute("href", "href", null)
	@define "title", entityAttribute("title", "title", null)
	@define "href", entityAttribute("href", "href", null)
