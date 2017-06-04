Utils    = require "./Utils"
{Entity} = require "./Entity"

class exports.Light extends Entity

	_kind 		 	: 'Light'
	_elementType 	: 'a-light'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'angle', 		60
	@_d 'decay', 		1
	@_d 'distance', 	0
	@_d 'intensity', 	1
	@_d 'penumbra', 	0
	@_d 'type', 		'directional'

	# Only works for Hemisphere light
	@define 'groundColor',
		get: ->
			@_groundColor
		set: (value) ->
			value = '#FFF'  if not value
			value = Color.toColor(value)
			if value and value.color
				@_groundColor = value.color
			else
				@_groundColor = value
			@_element.setAttribute 'ground-color', value
			return

	@define 'target',
		get: ->
			@_target or null
		set: (target) ->
			@_target = target
			if @_target is null
				@_element.removeAttribute 'target'
				return
			if Utils.isObject(target)
				if not target.id
					return
				target = "#Hologram#{target._kind}-#{target.id}"
			@_element.setAttribute 'target', target
			return
