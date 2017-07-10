{entityAttribute, Entity} = require "./Entity"

class exports.Link extends Entity

	entity :
		name: "Link",
		type: "a-link"

	#-------------------------------------------------------
	# PROPERTIES

	@define "href", entityAttribute("href", "href", null)
	@define "title", entityAttribute("title", "title", null)
	@define "highlight", entityAttribute("highlight", "highlighted", no)
	@define "highlightColor", entityAttribute("highlightColor", "highlightedColor", "#24CAFF")
	@define "peekMode", entityAttribute("peekMode", "peekMode", no)
	@define 'image',
		get: ->
			return null if not @_properties["image"]
			@_properties["image"]
		set: (value) ->
			if Utils.isObject value
				return if not value.id
				value = "#Hologram#{value.entity.name}-#{value.id}"
			else if Utils.isString value
				value = "url(#{Utils.parseAssets(value)})"
			@_properties["image"] = value
			@_element.setAttribute 'image', value
			return
