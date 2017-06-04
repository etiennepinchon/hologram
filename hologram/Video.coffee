{Entity} = require "./Entity"

class exports.Video extends Entity

	_kind 		 	: 'Video'
	_elementType 	: 'a-video'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'width', 		3
	@_d 'height', 		1.75
	@_d 'autoplay', 	no
	@_d 'loop', 		no
	@_d 'volume', 		1
