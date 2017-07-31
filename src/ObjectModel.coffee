Utils    = require "./Utils"
{Entity} = require "./Entity"
{Events} = require "./Events"

class exports.ObjectModel extends Entity

	entity :
		name: "ObjectModel"
		type: "a-obj-model"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define 'mtl',
		get: ->
			return undefined if not @_properties["mtl"]
			@_properties["mtl"]
		set: (value) ->
			if value is null
				@_element.removeAttribute 'mtl'
				return
			value = Utils.parseAssets(value)
			if Utils.isObject(value)
				if not value.id
					return
				value = "#Hologram#{value._kind}-#{value.id}"
			else if Utils.isString value
				value = "url(#{Utils.parseAssets(value)})"
			@_properties["mtl"] = value
			@_element.setAttribute 'mtl', value
			return

	# ----------------------------------------------------------------------------
	# METHODS

	onLoad : (cb)-> @on Events.ModelLoad, cb
