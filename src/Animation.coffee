{BaseClass} = require "./BaseClass"
{entityAttribute, Entity} = require "./Entity"
{Events} = require "./Events"

class AnimationItem extends Entity

	entity :
		name: "Animation"
		type: "a-animation"

	@define "dur", entityAttribute("dur", "dur", 1000)
	@define "delay", entityAttribute("delay", "delay", 0)
	@define "easing", entityAttribute("easing", "easing", "ease")
	@define "repeat", entityAttribute("repeat", "repeat", 0)
	@define "direction", entityAttribute("direction", "direction", "normal")
	@define "attribute", entityAttribute("attribute", "attribute", null)
	@define "fill", entityAttribute("fill", "fill", "forwards")
	@define "to", entityAttribute("to", "to", null)
	@define "from", entityAttribute("from", "from", null)

class exports.Animation extends BaseClass

	time : 1
	delay : 0
	repeat : 0
	curve : 'ease'
	direction : 'normal'
	fill: 'forwards'
	entity : undefined
	properties : {}
	then: null
	fromOrigin: yes

	_didStart: false
	_didFireCallback: false
	_animationItems : []

	_props: {}

	constructor: (options={}) ->
		super

		if options.entity
			_position = options.entity.position
			_rotation = options.entity.rotation
			_scale = options.entity.scale

			for item of options
				if item is "x" or item is "y" or item is "z"
					options.position = {} if not options.position
					options.position[item.toLowerCase().substr(-1)] = options[item]
					delete options[item]
				else if item is "rotationX" or item is "rotationY" or item is "rotationZ"
					options.rotation = {} if not options.rotation
					options.rotation[item.toLowerCase().substr(-1)] = options[item]
					delete options[item]
				else if item is "scaleX" or item is "scaleY" or item is "scaleZ"
					options.scale = {} if not options.scale
					options.scale[item.toLowerCase().substr(-1)] = options[item]
					delete options[item]

			if options.position and Utils.isObject(options.position)
				options.position.x = _position.x if not options.position.hasOwnProperty("x")
				options.position.y = _position.y if not options.position.hasOwnProperty("y")
				options.position.z = _position.z if not options.position.hasOwnProperty("z")
				options.position = Utils.stringifyVector(options.position)
			if options.rotation and Utils.isObject(options.rotation)
				options.rotation.x = _rotation.x if not options.rotation.hasOwnProperty("x")
				options.rotation.y = _rotation.y if not options.rotation.hasOwnProperty("y")
				options.rotation.z = _rotation.z if not options.rotation.hasOwnProperty("z")
				options.rotation = Utils.stringifyVector(options.rotation)
			if options.scale and Utils.isObject(options.scale)
				options.scale.x = _scale.x if not options.scale.hasOwnProperty("x")
				options.scale.y = _scale.y if not options.scale.hasOwnProperty("y")
				options.scale.z = _scale.z if not options.scale.hasOwnProperty("z")
				options.scale = Utils.stringifyVector(options.scale)

		# Retrieve properties to animate
		@properties = {}
		excluded = ['animate','time', 'delay', 'repeat', 'curve', 'direction', 'fill', 'entity', 'then']
		for item of options
			if excluded.indexOf(item) is -1
				@properties[item] = options[item] if options[item]
			else
				@[item] = options[item]
		if options.entity
			@entity = options.entity
		return

	start : ->
		that = @
		@_didStart = false
		@_didFireCallback = false
		@_animationItems = []
		@_props = {}

		for property of @properties
			animationItem = new AnimationItem
				attribute: property
				to: @properties[property]
			if @fromOrigin and @entity
				if @entity._properties[property]
					animationItem.from = @_props[property] = @entity._properties[property]
				if @entity[property] and not @_props[property]
					@_props[property] = @entity[property]
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

			animationItem.on Events.AnimationStart, ->
				if not that._didStart
					that._didStart = true
					that.emit Events.AnimationStart

			animationItem.on Events.AnimationStop, ->
				this.destroy yes
				# Callback once
				if that.then and not that._didFireCallback
					that._didFireCallback = true
					that.then()
					that.emit Events.AnimationStop

			@_animationItems.push animationItem
			if @entity
				animationItem.parent = @entity

	stop : ->
		for item in @_animationItems
			item.parent = null
			item.destroy(yes)
		@_animationItems = []

		# Callback once
		if @then and not @_didFireCallback
			@_didFireCallback = true
			@then()
			@emit Events.AnimationStop
		return

	cancel: ->
		@stop()
		for property of @properties
			@entity[property] = @_props[property] if @_props[property]
		@properties = {}
		@_props = {}
		return

	# ----------------------------------------------------------------------------
	# METHODS

	onStart : (cb)-> @on Events.AnimationStart, cb
	onEnd : (cb)-> @on Events.AnimationStop, cb
