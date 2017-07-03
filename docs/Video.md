## [Video](#video)

### Extends: [Entity](#entity)

The video primitive plays a video as a texture on a flat plane.

	myVideo = new Video
		src: "assets/festival.mp4"
		autoplay: yes
		position: "0 2 5"
		width: 16
		height: 9

	# Using the asset management system.
	cat = AssetVideo "assets/space.mp4"
	myVideo = new Video
		src: cat

-------------------------------------------------------

### [video.width](#video-width) *<float>*

Set the width of the video. Default is 1.

	myVideo = new Video
		width: 2

-------------------------------------------------------

### [video.height](#video-height) *<float>*

Set the height of the video. Default is 1.

	myVideo = new Video
		height: 5

-------------------------------------------------------

#### [video.color](#video-color) *<color>*

Defines the color of the video. Default is white.

	myVideo = new Video
		color: Color.blue

-------------------------------------------------------

#### [video.autoplay](#video-autoplay) *<color>*

Whether the video should play right after being loaded. Default is false.

	myVideo = new Video
		src: "assets/video.mp4"
		autoplay: yes

-------------------------------------------------------

#### [video.loop](#video-loop) *<boolean>*

Whether the video should repeat. Default is false.

	myVideo = new Video
		src: "assets/video.mp4"
		loop: yes

-------------------------------------------------------

#### [video.src](#video-src) *<string/AssetAudio>*

Path to video.

	myVideo = AssetVideo "assets/video.mp4"
	myVideo = new Video
		src: myVideo
