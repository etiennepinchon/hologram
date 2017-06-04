{Entity} = require "./Entity"

class exports.Sphere extends Entity

	_kind 		 	: 'Sphere'
	_elementType 	: 'a-sphere'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radius', 			1
	@_d 'segmentsWidth', 	36
	@_d 'segmentsHeight', 	18
	@_d 'thetaLength', 		180
	@_d 'thetaStart', 		0
	@_d 'phiLength', 		360
	@_d 'phiStart', 		0
