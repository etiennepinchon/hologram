Utils    = require "./Utils"
{Entity} = require "./Entity"

class exports.ObjectModel extends Entity

	_kind 		 	: 'GltfModel'
	_elementType 	: 'a-gltf-model'

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

	onLoad : (callback)-> @on Event.Load, cb
