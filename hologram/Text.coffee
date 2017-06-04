{Entity} = require "./Entity"

class exports.Text extends Entity

	_kind 		 	: 'Text'
	_color			: '#FFF'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'text',  ""
	@_d 'width',  null
	@_d 'height',  null
	@_d 'align',  'left'
	@_d 'anchor',  'center'
	@_d 'baseline',  'center'
	@_d 'font',  null
	@_d 'lineHeight',  0
	@_d 'whitespace',  'normal'

	@define 'zindex',
		get: ->
			return 0.001 if not @_zindex
			@_zindex
		set: (value)->
			@_zindex = value
			@_element.setAttribute 'zOffset', value
			return
