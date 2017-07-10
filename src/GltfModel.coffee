{Entity} = require "./Entity"
{Events} = require "./Events"

class exports.GltfModel extends Entity

	entity :
		name: "GltfModel"
		type: "a-gltf-model"

	#-------------------------------------------------------
	# PROPERTIES

	onLoad : (cb)-> @on Events.ModelLoad, cb
