{entityAttribute, Entity} = require "./Entity"

entityLineProp = (name, attributeName, fallback) ->
	result =
		default: fallback
		configurable: yes
		get: ->
			return @_properties[name] if @_properties.hasOwnProperty(name)
			return fallback
		set: (value) ->
			if value is "start" or value is "end"
				if Utils.isString value
					value = Utils.parseVector value
				if not Utils.isObject value
					value = {x: value, y: value, z: value}
				value.x = 0 if not value.hasOwnProperty("x")
				value.y = 0 if not value.hasOwnProperty("y")
				value.z = 0 if not value.hasOwnProperty("z")
			@_properties[name] = value
			@_updateLineAttribute()
			return

class exports.Line extends Entity

	entity :
		name: "Line",
		type: "a-entity"

	# --------------------------------------------------------------------------------------------------
	# PROPERTIES

	@define "start", entityLineProp("start", "start", {x: 0, y: 0, z: 0})
	@define "end", entityLineProp("end", "end", {x: 0, y: 0, z: 0})
	@define "color", entityLineProp("color", "color", "#74BEC1")
	@define "opacity", entityLineProp("opacity", "opacity", 1)
	@define "visible", entityLineProp("visible", "visible", yes)

	# --------------------------------------------------------------------------------------------------
	# PRIVATE

	_updateLineAttribute: ->
		attr = ""
		attr += "start: #{Utils.stringifyVector(@_properties["start"])};" if @_properties["start"]
		attr += "end: #{Utils.stringifyVector(@_properties["end"])};" if @_properties["end"]
		attr += "color: #{@_properties["color"]};" if @_properties["color"]
		attr += "opacity: #{@_properties["opacity"]};" if @_properties["opacity"] isnt undefined
		attr += "visible: #{@_properties["visible"]};" if @_properties["visible"] isnt undefined
		@element.setAttribute "line", attr
		return
