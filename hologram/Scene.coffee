{Entity} = require "./Entity"

class exports.Scene extends Entity

	_kind 		 : 'Scene'
	_elementType : 'a-scene'

	#-------------------------------------------------------
	# PROPERTIES

	# Enable stats
	@_d 'stats', no

	# Debug mode
	@_d 'debug', no

	# Enable embed mode
	@_d 'embed', no

	# Disable VR button
	@define 'vrButton',
		get : -> @_vrButton
		set : (value) ->
			@_vrButton = value
			@_element.setAttribute 'vr-mode-ui', 'enabled: '+value
			return

	#-------------------------------------------------------
	# FOG

	# type:  linear / exponential
	# color: "#AAA"

	@define 'fog',
		get : -> @_fog
		set : (value) ->
			@_fog = value
			if @_fog is null
				@_element.removeAttribute 'fog'
				return
			@_element.setAttribute 'fog', AFRAME.utils.styleParser.stringify(value)
			return
