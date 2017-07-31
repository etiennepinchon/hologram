{entityAttribute, Entity} = require "./Entity"
{Events} = require "./Events"

class exports.Sound extends Entity

	entity :
		name: "Sound"
		type: "a-sound"

	# ----------------------------------------------------------------------------
	# PROPERTIES

	@define "autoplay", entityAttribute("autoplay", "autoplay", no)
	@define "loop", entityAttribute("loop", "loop", no)
	@define "volume", entityAttribute("volume", "volume", 1)

	@play = ->
		@_element.components.sound.playSound()
		return

	@pause = ->
		@_element.components.sound.pauseSound()
		return

	@stop = ->
		@_element.components.sound.stopSound()
		return

	# ----------------------------------------------------------------------------
	# METHODS

	onSoundEnd : (callback)-> @on Events.SoundEnd, cb
