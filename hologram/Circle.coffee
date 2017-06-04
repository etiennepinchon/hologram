{Entity} = require "./Entity"

class exports.Circle extends Entity

	_kind 		 	: 'Circle'
	_elementType 	: 'a-circle'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radius', 			1
	@_d 'segments', 		32
	@_d 'thetaLength', 		360
	@_d 'thetaStart',		0
