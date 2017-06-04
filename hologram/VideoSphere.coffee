{Entity} = require "./Entity"

class exports.VideoSphere extends Entity

	_kind 		 	: 'VideoSphere'
	_elementType 	: 'a-videosphere'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'radius', 				5000
	@_d 'segmentsWidth', 		64
	@_d 'segmentsHeight', 		64
	@_d 'crossOrigin', 			'anonymous'
	@_d 'autoplay', 	no
	@_d 'loop', 		no
	@_d 'volume', 		1
