{Entity} = require "./Entity"

class exports.Cone extends Entity

	_kind 		 	: 'Cone'
	_elementType 	: 'a-cone'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radiusTop', 		.8
	@_d 'radiusBottom', 	1
	@_d 'openEnded', 		no
	@_d 'segmentsHeight', 	18
	@_d 'segmentsRadial', 	36
	@_d 'thetaLength',		360
	@_d 'thetaStart',		0
