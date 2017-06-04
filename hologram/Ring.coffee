{Entity} = require "./Entity"

class exports.Ring extends Entity

	_kind 		 	: 'Ring'
	_elementType 	: 'a-ring'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radiusInner', 		.8
	@_d 'radiusOuter', 		1.2
	@_d 'segmentsPhi', 		10
	@_d 'segmentsTheta', 	32
	@_d 'thetaLength', 		360
	@_d 'thetaStart', 		0
