Utils    = require "./Utils"
{Entity} = require "./Entity"
{Events} = require "./Events"

class exports.ObjectModel extends Entity

	entity :
		name: "ObjectModel"
		type: "a-object-model"

	#-------------------------------------------------------
	# PROPERTIES

	@define 'mtl',
		get: ->
			return undefined if not @_mtl
			@_mtl
		set: (value) ->
			if Utils.isObject(value)
				if not value.id
					return
				value = "#Hologram#{value._kind}-#{value.id}"
			@_mtl = value
			@_element.setAttribute 'mtl', value
			return

	#-------------------------------------------------------
	# METHODS

	onLoad : (cb)-> @on Events.Load, cb
