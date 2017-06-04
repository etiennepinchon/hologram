{Entity} = require "./Entity"

class exports.ColladaModel extends Entity

	_kind 		 	: 'ColladaModel'
	_elementType 	: 'a-collada-model'

	#-------------------------------------------------------
	# PROPERTIES

	onLoad : (callback)-> @on Event.Load, cb
