Utils    = require "./Utils"
{entityAttribute, Entity} = require "./Entity"

AFRAME.registerPrimitive 'h-light',
  defaultComponents: light: {}
  mappings:
    angle: 'light.angle'
    color: 'light.color'
    'ground-color': 'light.groundColor'
    decay: 'light.decay'
    distance: 'light.distance'
    intensity: 'light.intensity'
    penumbra: 'light.penumbra'
    type: 'light.type'
    target: 'light.target'
    'cast-shadow': 'light.castShadow'
    'shadow-bias': 'light.shadowBias'
    'shadow-camera-far': 'light.shadowCameraFar'
    'shadow-camera-fov': 'light.shadowCameraFov'
    'shadow-camera-near': 'light.shadowCameraNear'
    'shadow-camera-top': 'light.shadowCameraTop'
    'shadow-camera-right': 'light.shadowCameraRight'
    'shadow-camera-bottom': 'light.shadowCameraBottom'
    'shadow-camera-left': 'light.shadowCameraLeft'
    'shadow-camera-visible': 'light.shadowCameraVisible'
    'shadow-map-height': 'light.shadowMapHeight'
    'shadow-map-width': 'light.shadowMapWidth'

class Light extends Entity

	entity :
		name: "Light"
		type: "h-light"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "angle", entityAttribute("angle", "angle", 60)
	@define "decay", entityAttribute("decay", "decay", 1)
	@define "distance", entityAttribute("distance", "distance", 0)
	@define "intensity", entityAttribute("intensity", "intensity", 1)
	@define "penumbra", entityAttribute("penumbra", "penumbra", 0)
	@define "type", entityAttribute("type", "type", "directional")

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
