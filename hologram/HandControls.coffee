{Entity} = require "./Entity"

class exports.HandControls extends Entity

	_kind 		 	: 'HandControls'
	type 			: undefined

	constructor: (hand) ->
		super
		if hand
			@type = hand
			@_element.setAttribute 'hand-controls', hand

	onGripDown 		: (callback)-> @on Event.GripDown, cb
	onGripUp 		: (callback)-> @on Event.GripUp, cb
	onPointUp 		: (callback)-> @on Event.PointUp, cb
	onPointDown 	: (callback)-> @on Event.PointDown, cb
	onThumbUp 		: (callback)-> @on Event.ThumbUp, cb
	onThumbDown 	: (callback)-> @on Event.ThumbDown, cb
	onPointingStart : (callback)-> @on Event.PointingStart, cb
	onPointingEnd 	: (callback)-> @on Event.PointingEnd, cb
	onPistolStart 	: (callback)-> @on Event.PistolStart, cb
	onPistolEnd 	: (callback)-> @on Event.PistolEnd, cb

###
Hologram.define 'leftHand',
	get: ->
		if not @_leftHand
			@_leftHand = new HandControls('left')
		return @_leftHand

Hologram.define 'rightHand',
	get: ->
		if not @_rightHand
			@_rightHand = new HandControls('right')
		return @_rightHand
###
