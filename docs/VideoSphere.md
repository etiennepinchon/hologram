## [VideoSphere](#video-sphere)

### Extends: [Entity](#entity)

The videosphere primitive plays 360° videos in the background of the scene. Videospheres are a large sphere with the video texture mapped to the inside.

	myVideoSphere = new VideoSphere
		src: "assets/venice-beach.mp4"
		autoplay: yes

	# Using the asset management system.
	landscape = AssetVideo "assets/san-francisco.mp4"
	myVideoSphere = new VideoSphere
		src: landscape

-------------------------------------------------------

#### [videoSphere.src](#videosphere-src) *string/AssetVideo*

Path to video.

	myVideo = AssetVideo "assets/video.mp4"
	myVideoSphere = new VideoSphere
		src: myVideo

-------------------------------------------------------

#### [videoSphere.autoplay](#videosphere-autoplay) *color*

Whether the video sphere should play right after being loaded. Default is false.

	myVideoSphere = new VideoSphere
		src: "assets/video.mp4"
		autoplay: yes

-------------------------------------------------------

#### [videoSphere.loop](#videosphere-loop) *boolean*

Whether the video sphere should repeat. Default is false.

	myVideoSphere = new VideoSphere
		src: "assets/video.mp4"
		loop: yes

-------------------------------------------------------

#### [videoSphere.radius](#videosphere-radius) *integer*

Defines the radius of the video sphere. Default is 5000.

	myVideoSphere = new VideoSphere
		radius: 3000
		color: Color.blue
