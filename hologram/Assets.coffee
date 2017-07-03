{entityAttribute, Entity} = require "./Entity"

class exports.Assets extends Entity
	entity :
		name: "Assets"
		type: "a-assets"

	@define "timeout", entityAttribute("timeout", "timeout", null)

class _AssetItem extends Entity
	entity :
		name: "AssetItem"
		type: "a-asset-item"

class _AssetAudio extends Entity
	entity :
		name: "AssetAudio"
		type: "audio"

class _AssetImage extends Entity
	entity :
		name: "AssetImage"
		type: "img"

class _AssetVideo extends Entity
	entity :
		name: "AssetVideo"
		type: "video"

AssetItem = (src) ->
	asset = new _AssetItem
		src: src
		parent: Hologram.assets
	return asset

AssetAudio = (src) ->
	asset = new _AssetAudio
		src: src
		parent: Hologram.assets
	return asset

AssetImage = (src) ->
	asset = new _AssetImage
		src: src
		parent: Hologram.assets
	return asset

AssetVideo = (src) ->
	asset = new _AssetVideo
		src: src
		parent: Hologram.assets
	return asset
