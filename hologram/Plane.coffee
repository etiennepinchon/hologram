{Entity} = require "./Entity"

class exports.Plane extends Entity

	_kind 		 	: 'Plane'
	_elementType 	: 'a-plane'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'width', 			1
	@_d 'height', 			1
	@_d 'segmentsWidth', 	1
	@_d 'segmentsHeight', 	1
