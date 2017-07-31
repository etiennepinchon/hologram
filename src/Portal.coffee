{entityAttribute, Entity} = require "./Entity"

class exports.Portal extends Entity

	entity :
		name: "Portal",
		type: "a-link"

	constructor: (options={})->
		options.href = "index.html" if not options.href
		super

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "href", entityAttribute("href", "href", "index.html")
	@define "title", entityAttribute("title", "title", null)
	@define "highlight", entityAttribute("highlight", "highlighted", no)
	@define "highlightColor", entityAttribute("highlightColor", "highlightedColor", "#24CAFF")
	@define "peekMode", entityAttribute("peekMode", "peekMode", no)
	@define 'image',
		get: ->
			return null if not @_properties["image"]
			@_properties["image"]
		set: (value) ->
			if value is null
				@_element.removeAttribute 'image'
				return
			if Utils.isObject value
				return if not value.id
				value = "#Hologram#{value.entity.name}-#{value.id}"
			else if Utils.isString value
				value = "url(#{Utils.parseAssets(value)})"
			@_properties["image"] = value
			@_element.setAttribute 'image', value
			return
