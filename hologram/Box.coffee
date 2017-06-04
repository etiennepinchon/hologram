{Entity} = require "./Entity"

class exports.Box extends Entity

	_kind 		 	: 'Box'
	_elementType 	: 'a-box'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'width', 				1
	@_d 'height', 				1
	@_d 'depth', 				1

	@_d 'segmentsWidth', 		1
	@_d 'segmentsHeight', 		1
	@_d 'segmentsDepth',		1
