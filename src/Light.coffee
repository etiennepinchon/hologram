Utils    = require "./Utils"
{entityAttribute, Entity} = require "./Entity"

class Light extends Entity

	entity :
		name: "Light"
		type: "a-light"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "angle", entityAttribute("angle", "angle", 60)
	@define "decay", entityAttribute("decay", "decay", 1)
	@define "distance", entityAttribute("distance", "distance", 0)
	@define "intensity", entityAttribute("intensity", "intensity", 1)
	@define "penumbra", entityAttribute("penumbra", "penumbra", 0)
	@define "type", entityAttribute("type", "type", "directional")
	@define "castShadow", entityAttribute("castShadow", "castShadow", no)

	# Only works for Hemisphere light
	@define "groundColor", entityAttribute("groundColor", "ground-color", "#FFF")

	@define 'target',
		get: ->
			@_target or null
		set: (target) ->
			@_target = target
			if @_target is null
				@_element.removeAttribute 'target'
				return
			if Utils.isObject(target)
				if not target.id
					return
				target = "#Hologram#{target._kind}-#{target.id}"
			@_element.setAttribute 'target', target
			return

keywords = ["ambient", "directional", "hemisphere", "point", "spot"]
for item in keywords
	Light[item] = item

module.exports = Light
