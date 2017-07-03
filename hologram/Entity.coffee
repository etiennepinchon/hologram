Utils = require "./Utils"
{BaseClass} = require "./BaseClass"
{Events} = require "./Events"

entityAttribute = (name, attributeName, fallback) ->
	result =
		default: fallback
		get: ->
			return @_properties[name] if @_properties.hasOwnProperty(name)
			return fallback
		set: (value) ->
			if name is "shadow"
				value = "receive: #{value}"
			else if name is "constraint" and Utils.isObject(value)
				if value.target && Utils.isObject(value.target)
					value.target = "#Hologram#{value.target.entity.name}-#{value.target.id}"
			else if name is "lookAt" and Utils.isObject(value)
				value = "#Hologram#{value.entity.name}-#{value.id}"
			@_properties[name] = value

			if value is null
				@_element.removeAttribute attributeName
				return
			if Utils.isObject(value)
				value = AFRAME.utils.styleParser.stringify(value)
			@_element.setAttribute attributeName, value

exports.entityAttribute = entityAttribute

class exports.Entity extends BaseClass
	constructor: (options={}) ->

		@_element 		= {}
		@_animations	= []

		super

		@_properties = {}
		@_children 		 = []
		@_createElement()
		@_context.addView @

		if not options.parent && @entity.name isnt 'Scene' && @entity.name isnt 'Animation' && @entity.name isnt 'Cursor'
			@parent = Hologram.scene
		else if options.parent
			@parent = options.parent

		delete options.parent if options.parent
		@props = options if options

	#-------------------------------------------------------
	# PROPERTIES

	entity :
		name: "Entity",
		type: "a-entity"

	@define "position", entityAttribute("position", "position", null)
	@define "rotation", entityAttribute("rotation", "rotation", null)
	@define "scale", entityAttribute("scale", "scale", null)
	@define "geometry",  entityAttribute("geometry", "geometry", null)
	@define "material",  entityAttribute("material", "material", null)
	@define "cursor", entityAttribute("cursor", "cursor", null)
	@define "raycaster",  entityAttribute("raycaster", "raycaster", null)
	@define "light",  entityAttribute("light", "light", null)
	@define "sound",  entityAttribute("sound", "sound", null)
	@define "visible",  entityAttribute("visible", "visible", yes)
	@define "opacity", entityAttribute("opacity", "opacity", 1)
	@define "metalness", entityAttribute("metalness", "metalness", 0)
	@define "repeat", entityAttribute("repeat", "repeat", no)
	@define "roughness", entityAttribute("roughness", "roughness", .5)
	@define "shader", entityAttribute("shader", "shader", "standard")
	@define "side", entityAttribute("side", "side", "front")
	@define "transparent", entityAttribute("transparent", "transparent", no)
	@define "wireframe", entityAttribute("wireframe", "wireframe", no)
	@define "wireframeWidth", entityAttribute("wireframeWidth", "wireframe-width", 2)
	@define "fog", entityAttribute("fog", "fog", no)
	@define "color", entityAttribute("color", "color", '#FFF')
	@define "camera", entityAttribute("camera", "camera", null)

	# Physics
	@define "static", entityAttribute("static", "static-body", null)
	@define "dynamic", entityAttribute("dynamic", "dynamic-body", null)
	@define "constraint", entityAttribute("constraint", "constraint", null)

	# Particles
	@define "particles", entityAttribute("particles", "particle-system", null)

	# Look at
	@define "lookAt", entityAttribute("lookAt", "look-at", null)

	# Link
	@define "link", entityAttribute("link", "link", null)

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

	@define 'children',
		enumerable: no
		exportable: no
		importable: true
		get: ->
			@_children or []

	#-------------------------------------------------------
	# GIF

	@define 'gif',
		get: ->
			return no if not @_properties["gif"]
			@_properties["gif"]
		set: (value)->
			@_properties["gif"] = value
			if value
				if @_properties["shader"]
					@_properties["oshader"] = @_properties["shader"]
				@shader = "gif"
			else
				if @_properties["oshader"]
					@shader = @_properties["oshader"]
			return

	@define 'src',
		get: ->
			return null if not @_properties["src"]
			@_properties["src"]
		set: (value) ->
			@_properties["gif"] = null
			if Utils.isObject value
				if not value.id
					return
				if value._gif
					@gif = true
				value = "#Hologram#{value.entity.name}-#{value.id}"
			else if Utils.isString value
				if value.split('.').pop() is "gif"
					@_properties["gif"] = true
			@_properties["src"] = value
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

	onCollide	 			: (cb) ->
		@on Events.Collide, cb
		return

	#-------------------------------------------------------
	# DOM METHODS

	destroy : (descendance) ->
		@parent._children = Utils.without(@parent._children, @) if @parent
		try
		  @_element.parentNode?.removeChild @_element
		catch error

		@removeAllListeners()
		@_context.removeView(@)
		if descendance
			for view in @_children
				view.destroy()
		return

	_createElement: ->
		@_element = document.createElement(@entity.type)
		@_element.setAttribute 'id', "Hologram#{@entity.name}-#{@id}"
		@_element.instance = @
		return

	#-------------------------------------------------------
	# INSPECTOR

	toInspect: ->
		return "<#{@entity.name} id:#{@id} (#{round(@x)},#{round(@y)})>"
