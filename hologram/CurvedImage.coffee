{Entity} = require "./Entity"

class exports.CurvedImage extends Entity

	_kind 		 	: 'CurvedImage'
	_elementType 	: 'a-curvedimage'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'height', 				1
	@_d 'radius', 				0.8
	@_d 'segmentsHeight', 		18
	@_d 'segmentsRadial', 		48
	@_d 'thetaLength',			270
	@_d 'thetaStart',			0
