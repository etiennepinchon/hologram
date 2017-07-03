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
	fromOrigin: no

	_didStart: false
	_didFireCallback: false
	_animationItems : []

	constructor: (options={}) ->
		super
		# Retrieve properties to animate
		excluded = ['time', 'delay', 'repeat', 'curve', 'direction', 'fill', 'entity', 'then']
		for item of options
			if excluded.indexOf(item) is -1
				@properties[item] = options[item]
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

		for property of @properties
			animationItem = new AnimationItem
				attribute: property
				to: @properties[property]
			if @fromOrigin and @entity
				animationItem.from = @entity._properties[property]
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

		# Callback once
		if @then and not @_didFireCallback
			@_didFireCallback = true
			@then()
			@emit Events.AnimationStop

	#-------------------------------------------------------
	# METHODS

	onStart : (cb)-> @on Events.AnimationStart, cb
	onEnd : (cb)-> @on Events.AnimationStop, cb
