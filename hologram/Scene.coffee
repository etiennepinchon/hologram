{entityAttribute, Entity} = require "./Entity"

effectAttribute = (name)->
	get : ->
		return enabled: true if @_properties[name] is undefined
		@_properties[name]
	set : (value) ->
		if @_properties[name] is undefined
			@_properties[name] = enabled: true
		# Settings
		if value instanceof Object
			Utils.extend(@_properties[name], value)
			if @_properties[name].enabled
				@_addEffect(name)
			else
				@_removeEffect(name)
		# Turn on
		else if value
			@_properties[name].enabled = true
			@_addEffect(name)
		# Turn of
		else
			@_properties[name].enabled = false
			@_removeEffect(name)
		@_updateEffects()
		return

class exports.Scene extends Entity

	entity :
		name: "Scene"
		type: "a-scene"
	effects : []

	#-------------------------------------------------------
	# PROPERTIES

	@define "stats", entityAttribute("stats", "stats", no)
	@define "debug", entityAttribute("debug", "debug", no)
	@define "embed", entityAttribute("embed", "embed", no)

	# Disable VR button
	@define 'vrButton',
		get : ->
			return yes if @_properties["fog"] is undefined
			@_properties["vrButton"]
		set : (value) ->
			@_properties["vrButton"] = value
			@_element.setAttribute 'vr-mode-ui', 'enabled: '+value
			return

	#-------------------------------------------------------
	# FOG

	# type:  linear / exponential
	# color: "#AAA"

	@define 'fog',
		get : ->
			return no if @_properties["fog"] is undefined
			@_properties["fog"]
		set : (value) ->
			@_properties["fog"] = value
			if @_properties["fog"] is null
				@_element.removeAttribute 'fog'
				return
			@_element.setAttribute 'fog', AFRAME.utils.styleParser.stringify(value)
			return

	#-------------------------------------------------------
	# PHYSICS

	@define "physics", entityAttribute("physics", "physics", null)

	###
	@define 'physics_debug',
		get : ->
			return no if @_properties["physics_debug"] is undefined
			@_properties["physics_debug"]
		set : (value) ->
			@_properties["physics_debug"] = value
			@_element.setAttribute 'physics', 'debug: '+value
			return
	###

	#-------------------------------------------------------
	# EFFECTS

	@define 'bloom', effectAttribute("bloom")
	@define 'fxaa', effectAttribute("fxaa")
	@define 'film', effectAttribute("film")
	@define 'outline', effectAttribute("outline")
	@define 'glitch', effectAttribute("glitch")
	@define 'colors', effectAttribute("colors")

	#-------------------------------------------------------
	# PRIVATE

	_addEffect: (name)->
		if @effects.indexOf(name) is -1
			@effects.push(name)
		fx = []
		for item of @_properties["#{name}"]
			if item isnt "enabled"
				fx[item] = @_properties["#{name}"][item]
		@_element.setAttribute name, AFRAME.utils.styleParser.stringify(fx)
		return

	_removeEffect: (name)->
		fx = []
		for item in @effects
			if item isnt name
				fx.push item
		@effects = fx
		@_element.setAttribute name, no
		return

	_updateEffects: ->
		@_element.setAttribute 'effects', @effects.join(", ")
		return
