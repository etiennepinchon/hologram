{Entity} = require "./Entity"
{Events} = require "./Events"

class exports.HandControls extends Entity

	entity :
		name: "HandControls"
		type: "a-entity"

	type 			: null

	constructor: (hand) ->
		super
		if hand
			@type = hand
			@_element.setAttribute 'hand-controls', hand

	onGripDown 		: (callback)-> @on Events.GripDown, cb
	onGripUp 		: (callback)-> @on Events.GripUp, cb
	onPointUp 		: (callback)-> @on Events.PointUp, cb
	onPointDown 	: (callback)-> @on Events.PointDown, cb
	onThumbUp 		: (callback)-> @on Events.ThumbUp, cb
	onThumbDown 	: (callback)-> @on Events.ThumbDown, cb
	onPointingStart : (callback)-> @on Events.PointingStart, cb
	onPointingEnd 	: (callback)-> @on Events.PointingEnd, cb
	onPistolStart 	: (callback)-> @on Events.PistolStart, cb
	onPistolEnd 	: (callback)-> @on Events.PistolEnd, cb
