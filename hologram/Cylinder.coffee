{Entity} = require "./Entity"

class exports.Cylinder extends Entity

	_kind 		 	: 'Cylinder'
	_elementType 	: 'a-cylinder'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radius', 			1
	@_d 'height', 			1
	@_d 'openEnded', 		no
	@_d 'segmentsHeight', 	18
	@_d 'segmentsRadial', 	36
	@_d 'thetaLength',		360
	@_d 'thetaStart',		0
