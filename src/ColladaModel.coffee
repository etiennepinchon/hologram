{Entity} = require "./Entity"
{Events} = require "./Events"

class exports.ColladaModel extends Entity

	entity :
		name: "ColladaModel"
		type: "a-collada-model"

	#-------------------------------------------------------
	# PROPERTIES

	onLoad : (cb)-> @on Events.ModelLoad, cb
