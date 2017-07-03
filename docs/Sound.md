## [Sound](#sound)

### Extends: [Entity](#entity)

The sound primitive wraps the sound component.

With an image as a background:

	mySound = new Sound
		src: "assets/song.mp3"
		autoplay: true
		position: "0 2 5"

-------------------------------------------------------

#### [sound.autoplay](#sound-autoplay) *<color>*

Whether the sound should play right after being loaded. Default is false.

	mySound = new Sound
		src: "assets/song.mp3"
		autoplay: true

-------------------------------------------------------

#### [sound.loop](#sound-loop) *<boolean>*

Whether the sound should repeat. Default is false.

	mySound = new Sound
		src: "assets/song.mp3"
		loop: true

-------------------------------------------------------

#### [sound.volume](#sound-volume) *<float>*

Defines the volume of the sound. Default is 1.

	mySound = new Sound
		src: "assets/song.mp3"
		volume: 0.8

-------------------------------------------------------

#### [sound.src](#sound-src) *<string/AssetAudio>*

Path to sound.
	
	myTrack = AssetAudio "assets/song.mp3"
	mySound = new Sound
		src: myTrack
		volume: 0.8


### [Pause and Resume](#sound-pause-and-resume)

To programmatically pause or resume a playing sound, we can tell the entity to pause or resume:

	mySound.stop()

Or to pause only the sound:

	mySound.pause()

And to play the sound:

	mySound.play()
