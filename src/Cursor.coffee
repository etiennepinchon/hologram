{Entity} = require "./Entity"

class exports.Cursor extends Entity

	entity :
		name: "Cursor",
		type: "a-cursor"

	_enabled : false
	_fuse : true
	_fuseTimeout : 0.5
	_maxDistance : 1000
	_radiusInner : 0.02
	_radiusOuter : 0.03
	_color : "#000"

	constructor: (options={}) ->
		super

		@_updateCursor()
		@_updateGeometry()
		@_updateMaterial()
		@_updateRaycaster()

	#-------------------------------------------------------
	# PROPERTIES

	@define 'enabled',
		get: ->
			@_enabled
		set: (value) ->
			@_enabled = value
			if @_enabled
				@parent = Hologram.camera
				return
			@parent = null
			return

	@define 'fuse',
		get: ->
			@_fuse
		set: (value) ->
			@_fuse = value
			@_updateCursor()
			return

	@define 'fuseTimeout',
		get: ->
			@_fuseTimeout
		set: (value) ->
			@_fuseTimeout = value
			@_updateCursor()
			return

	@define 'radiusInner',
		get: ->
			@_radiusInner
		set: (value) ->
			@_radiusInner = value
			@_updateGeometry()
			return

	@define 'radiusOuter',
		get: ->
			@_radiusOuter
		set: (value) ->
			@_radiusOuter = value
			@_updateGeometry()
			return

	@define 'color',
		get: ->
			@_color
		set: (value) ->
			@_color = value
			@_updateMaterial()
			return

	@define 'maxDistance',
		get: ->
			@_maxDistance
		set: (value) ->
			@_maxDistance = value
			@_updateRaycaster()
			return

	#-------------------------------------------------------
	# PRIVATE METHODS

	_updateCursor : ->
		@cursor = "fuse: #{@_fuse}; fuseTimeout: #{@_fuseTimeout*1000};"
		return

	_updateGeometry : ->
		@geometry = "primitive: ring; radiusInner: #{@_radiusInner}; radiusOuter: #{@_radiusOuter};"
		return

	_updateMaterial : ->
		@material = "color: #{@_color}; shader: flat;"
		return

	_updateRaycaster : ->
		@raycaster = "far: #{@_maxDistance};"
		return
