{Entity} = require "./Entity"

class _AnimationItem extends Entity

	_kind 		 	: 'Animation'
	_elementType 	: 'a-animation'

	@_d 'dur', 			1000 # duration
	@_d 'delay', 		0
	@_d 'easing', 		'ease'
	@_d 'repeat', 		0
	@_d 'direction',	'normal'
	@_d 'attribute',	undefined
	@_d 'fill',			'forwards'
	@_d 'to',			undefined # end value


class exports.Animation extends Element

	_kind 		 	: 'Animation'
	_elementType 	: 'a-animation'

	time : 1
	delay : 0
	repeat : 0
	curve : 'ease'
	direction : 'normal'
	entity : undefined
	properties : {}

	_animationItems : []

	constructor: (options={}) ->
		super
		# Retrieve properties to animate
		excluded = ['time', 'delay', 'repeat', 'curve', 'direction', 'fill', 'entity']
		for item of options
			if excluded.indexOf(item) is -1
				@properties[item] = options[item]
			else
				@[item] = options[item]
		if options.entity
			@entity = options.entity
		return

	start : ->
		@_animationItems = []
		for property of @properties
			animationItem = new _AnimationItem
				attribute: property
				to: @properties[property]
			if @time isnt 1
				animationItem.dur = @time*1000
			if @delay isnt 0
				animationItem.delay = @delay*1000
			if @repeat isnt 0
				animationItem.repeat = @repeat
			if @curve isnt 'ease'
				animationItem.easing = @curve.replace(/([A-Z])/g, "-$1").toLowerCase()
			if @direction isnt 'normal'
				animationItem.direction = @direction
			if @fill isnt 'forwards'
				animationItem.fill = @fill
			@_animationItems.push animationItem
			if @entity
				animationItem.parent = @entity

	stop : ->
		for item in @_animationItems
			item.parent = null

	#-------------------------------------------------------
	# PROPERTIES

	#-------------------------------------------------------
	# METHODS

	onLoad : (callback)-> @on Events.Load, cb
