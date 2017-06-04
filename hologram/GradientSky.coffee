{Entity} = require "./Entity"

class exports.GradientSky extends Entity

	_kind 		 	: 'GradientSky'
	_elementType	: 'a-gradient-sky'
	_colorTop		: '#FFF'
	_colorBottom	: '#000'

	constructor: (options={}) ->
		@_updateColorTop options.colorTop if options.colorTop
		@_updateColorBottom options.colorBottom if options.colorBottom

		#options.geometry = "primitive: sphere; radius: 5000;"
		options.material = "shader: gradient; topColor: #{@colorTop}; bottomColor: #{@colorBottom};"

		delete options.colorTop
		delete options.colorBottom

		super
		console.log options.material
		return

	#-------------------------------------------------------
	# PROPERTIES

	@define 'colorTop',
		get: ->
			@_colorTop
		set: (value) ->
			@_updateColorTop value
			@_updateGradient()
			return

	@define 'colorBottom',
		get: ->
			@_colorBottom
		set: (value) ->
			@_updateColorBottom value
			@_updateGradient()
			return

	#-------------------------------------------------------
	# PRIVATE METHODS

	_updateColorTop : (value)->
		value = '#FFF' if not value
		@_colorTop = value
		return

	_updateColorBottom : (value)->
		value = '#000' if not value
		@_colorBottom = value
		return

	_updateGradient : ->
		@material = "shader: gradient; topColor: #{@_colorTop}; bottomColor: #{@_colorBottom};"
		return
