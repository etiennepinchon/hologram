{Entity} = require "./Entity"

class exports.Dodecahedron extends Entity

	_kind 		 	: 'Dodecahedron'
	_elementType 	: 'a-dodecahedron'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radius', 			1
	@_d 'segmentsHeight', 	18
	@_d 'segmentsRadial', 	36
	@_d 'thetaLength',		360
	@_d 'thetaStart',		0
