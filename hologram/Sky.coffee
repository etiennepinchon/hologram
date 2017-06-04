{Entity} = require "./Entity"

class exports.Sky extends Entity

	_kind 		 	: 'Sky'
	_elementType 	: 'a-sky'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radius', 			5000
	@_d 'segmentsWidth', 	64
	@_d 'segmentsHeight', 	20
	@_d 'thetaLength', 		180
	@_d 'thetaStart', 		0
	@_d 'phiLength', 		360
	@_d 'phiStart', 		0

	@define 'color',
		get: ->
			@_color
		set: (value) ->
			value = '#FFF'  if not value
			@_color = value
			@_element.setAttribute 'color', value
			return
