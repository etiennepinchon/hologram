{entityAttribute, Entity} = require "./Entity"
{Events} = require "./Events"

class exports.GltfModel extends Entity

	entity :
		name: "GltfModel"
		type: "a-entity"#a-gltf-model"

	@define 'src',
		get: ->
			return null if not @_properties["src"]
			@_properties["src"]
		set: (value) ->
			if value is null
				@_element.removeAttribute 'src'
				return
			if Utils.isObject value
				return if not value.id
				value = "#Hologram#{value.entity.name}-#{value.id}"
			else if Utils.isString value
				value = Utils.parseAssets(value)
				value = "src: url(#{value});"
			@_properties["src"] = value
			@_element.setAttribute 'gltf-model-next', value
			return

	# ----------------------------------------------------------------------------
	# PROPERTIES

	onLoad : (cb)-> @on Events.ModelLoad, cb
