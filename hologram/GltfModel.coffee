{Entity} = require "./Entity"

class exports.GltfModel extends Entity

	_kind 		 	: 'GltfModel'
	_elementType 	: 'a-gltf-model'

	#-------------------------------------------------------
	# PROPERTIES

	onLoad : (callback)-> @on Event.Load, cb
