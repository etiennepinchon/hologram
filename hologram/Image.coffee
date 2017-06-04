{Entity} = require "./Entity"

class exports.Image extends Entity

	_kind 		 	: 'Image'
	_elementType 	: 'a-image'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'width', 			1
	@_d 'height', 			1
	@_d 'segmentsWidth', 	1
	@_d 'segmentsHeight', 	1
