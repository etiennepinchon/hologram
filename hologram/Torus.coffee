{Entity} = require "./Entity"

class exports.Torus extends Entity

	_kind 		 	: 'Torus'
	_elementType 	: 'a-torus'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radius', 			1
	@_d 'radiusTubular', 	.2
	@_d 'segmentsRadial', 	0
	@_d 'segmentsTubular', 	32
