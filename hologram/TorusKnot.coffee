{Entity} = require "./Entity"

class exports.TorusKnot extends Entity

	_kind 		 	: 'TorusKnot'
	_elementType 	: 'a-torus-knot'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radius', 			1
	@_d 'radiusTubular', 	.2
	@_d 'segmentsRadial', 	0
	@_d 'segmentsTubular', 	32
