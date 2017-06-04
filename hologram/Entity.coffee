Utils = require "./Utils"

{BaseClass} = require "./BaseClass"

class exports.Entity extends BaseClass
	constructor: (options={}) ->

		@_element 		= {}
		@_animations	= []

		super

		@_children 		 = []
		@_createElement()
		@_context.addView @

		if not options.parent && @_kind isnt 'Scene' && @_kind isnt 'Animation' && @_kind isnt 'Cursor'
			@parent = Hologram.scene
		else if options.parent
			@parent = options.parent

		delete options.parent if options.parent
		@props = options if options

	#-------------------------------------------------------
	# PROPERTIES

	_kind 		 	: 'Entity'
	_elementType 	: 'a-entity'

	_gif 			: no
	_oshader 		: undefined

	@_d = (name, value) ->
		@["_#{name}"] = value
		@define name,
			get: -> @["_#{name}"]
			set: (value) ->
				@["_#{name}"] = value
				@_element.setAttribute name.replace(/([A-Z])/g, "-$1").toLowerCase(), value
				return

	# Define and remap
	@_dr = (name, realName, value) ->
		@["_#{name}"] = value
		@define name,
			get: -> @["_#{name}"]
			set: (value) ->
				@["_#{name}"] = value
				@_element.setAttribute realName.replace(/([A-Z])/g, "-$1").toLowerCase(), value
				return

	@_d 'cursor', 		undefined
	@_d 'raycaster', 	undefined
	@_d 'geometry', 	undefined
	@_d 'material', 	undefined
	@_d 'light', 		undefined
	@_d 'sound', 		undefined
	@_d 'visible', 		yes

	@_d 'position', 	undefined
	@_d 'rotation', 	undefined
	@_d 'scale', 		undefined

	@_d 'opacity', 				1
	@_d 'metalness', 			0
	@_d 'repeat', 				no
	@_d 'roughness', 			.5
	@_d 'shader', 				'standard'
	@_d 'side', 				'front'
	@_d 'transparent', 			no

	@_d 'wireframe', 			no
	@_d 'wireframeWidth', 		2
	@_d 'fog', 					no

	@define 'color',
		get: ->
			@_color
		set: (value) ->
			value = '#FFF' if not value
			@_color = value
			@_element.setAttribute 'color', value
			return

	#-------------------------------------------------------
	# DOM ELEMENTS

	@define 'html',
		get: -> @_element.innerHTML or ""
		set: (value) ->
			@_element.innerHTML = value
			return
	@define 'context',
		get: ->
			return @_context
	@define '_domEventManager',
		get: ->
			return @_context.domEventManager.wrap @_element
	@define 'element',
		get: ->
			return @_element

	#-------------------------------------------------------
	# PROPERTIES

	@define 'parent',
		enumerable: no
		exportable: no
		importable: true
		get: ->
			@_parent or null
		set: (view) ->
			return if view is @_parent or view is -1
			if @_parent and not view
				@_parent._children = Utils.without @_parent._children, @
				if @_element.parentNode is @_parent._element
					@_parent._element.removeChild @_element
				@_parent = view
				return
			view._element.appendChild(@_element)
			view._children.push @
			@_parent = view
			return

	#-------------------------------------------------------
	# GIF

	@define 'gif',
		get: ->
			@_gif
		set: (value)->
			@_gif = value
			if value
				if @_shader
					@_oshader = @_shader
				@shader = 'gif'
			else
				if @_oshader
					@shader = @_oshader
			return

	@define 'src',
		get: ->
			return undefined if not @_src
			@_src
		set: (value) ->
			@_gif = no
			if Utils.isObject value
				if not value.id
					return
				if value._gif
					@gif = true
				value = "#Hologram#{value._kind}-#{value.id}"
			else if Utils.isString value
				# enable the gif engine
				if value.split('.').pop() is "gif"
					@_gif = true
			@_src = value
			@_element.setAttribute 'src', value
			return

	#-------------------------------------------------------
	# ANIMATIONS

	animate: (options={})->
		options = Utils.extend(options, {entity: @})
		a = new Animation options
		a.start()
		@_animations.push a

	stopAnimate : ->
		for item in @_animations
			item.stop()

	#-------------------------------------------------------
	# EVENTS

	emit: (eventName, args...) ->
		if @_cancelClickEventInDragSession
			if eventName in [Events.Click,
				Events.Tap, Events.TapStart, Events.TapEnd,
				Events.LongPress, Events.LongPressStart, Events.LongPressEnd]
				if @_parentDraggableView()
					velocity = @_parentDraggableView()?.draggable.velocity
					return if Math.abs(velocity.x) > @_cancelClickEventInDragSessionVelocity
					return if Math.abs(velocity.y) > @_cancelClickEventInDragSessionVelocity
		super(eventName, args..., @)

	once: (eventName, listener) =>
		super(eventName, listener)
		@_addListener(eventName, listener)

	addListener: (eventName, listener) =>
		return if not eventName or not listener
		super(eventName, listener)
		@_addListener(eventName, listener)

	removeListener: (eventName, listener) ->
		throw Error("Entity.off needs a valid event name") unless eventName
		super(eventName, listener)
		@_removeListener(eventName, listener)

	_addListener: (eventName, listener) ->
		if Utils.domValidEvent(@_element, eventName) or eventName in Utils.values(Gesture)
			if not @_domEventManager.listeners(eventName).length
				@_domEventManager.addEventListener eventName, (event) =>
					@emit(eventName, event)

	_removeListener: (eventName, listener) ->
		if not @listeners(eventName).length
			@_domEventManager.removeAllListeners(eventName)

	on: @::addListener
	off: @::removeListener

	# Mouse event
	onClick 				: (cb) ->
		@on Events.Click, cb
		return
	onFusing				: (cb) ->
		@on Events.Fusing, cb
		return
	onMouseUp 				: (cb) ->
		@on Events.MouseUp, cb
		return
	onMouseDown 			: (cb) ->
		@on Events.MouseDown, cb
		return
	onMouseIn				: (cb) ->
		@on Events.MouseIn, cb
		return
	onMouseOut	 			: (cb) ->
		@on Events.MouseOut, cb
		return

	#-------------------------------------------------------
	# DOM METHODS

	destroy : (descendance) ->
		@parent._children = Utils.without(@parent._children, @) if @parent
		@_element.parentNode?.removeChild @_element
		@removeAllListeners()
		@_context.removeView(@)
		if descendance
			for view in @_children
				view.destroy()
		return

	_createElement: ->
		@_element = document.createElement(@_elementType)
		@_element.setAttribute 'id', "Hologram#{@_kind}-#{@id}"
		@_element.instance       = @
		return

	#-------------------------------------------------------
	# INSPECTOR

	toInspect: ->
		return "<#{@_kind} id:#{@id} (#{round(@x)},#{round(@y)})>"
