{Entity} = require "./Entity"

class exports.Assets extends Entity
	_kind 		 : 'Assets'
	_elementType : 'a-assets'

	@_d 'timeout',  null

class _AssetItem extends Entity
	_kind 		 : 'AssetItem'
	_elementType : 'a-asset-item'

class _AssetAudio extends Entity
	_kind 		 : 'AssetAudio'
	_elementType : 'audio'

class _AssetImage extends Entity
	_kind 		 : 'AssetImage'
	_elementType : 'img'

class _AssetVideo extends Entity
	_kind 		 : 'AssetVideo'
	_elementType : 'video'

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

###
Hologram.define 'assetsTimeout',
	get: ->
		null or @_assetsTimeout
	set: (value) ->
		@_assetsTimeout = value
		@assets.timeout = value
		return
###
