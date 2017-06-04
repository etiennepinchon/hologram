{Entity} = require "./Entity"

class exports.Sound extends Entity

	_kind 		 	: 'Sound'
	_elementType 	: 'a-sound'

	#-------------------------------------------------------
	# PROPERTIES

	@_d 'autoplay', 	no
	@_d 'loop', 		no
	@_d 'volume', 		1

	@play = ->
		@_element.components.sound.playSound()

	@pause = ->
		@_element.components.sound.pauseSound()

	@stop = ->
		@_element.components.sound.stopSound()

	#-------------------------------------------------------
	# METHODS

	onSoundEnd : (callback)-> @on Events.SoundEnd, cb
