{Entity} = require "./Entity"

class exports.Camera extends Entity

	_kind 		 	: 'Camera'
	_elementType 	: 'a-camera'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'far', 					10000
	@_d 'fov', 					80
	@_d 'near', 				.5
	@_d 'lookControls', 		yes
	@_d 'userHeight', 			1.6
	@_dr 'wasdControls', 'wasdControlsEnabled', yes
	@_d 'active', 	yes
