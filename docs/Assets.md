## [Assets](#assets)

Hologram has an asset management system that allows you to place your assets in one place and to preload and cache assets for better performance.

Games and rich 3D experiences traditionally preload their assets, such as models or textures, before rendering their scenes. This makes sure that assets aren’t missing visually, and this is beneficial for performance to ensure scenes don’t try to fetch assets while rendering.

Assets include:

* `AssetModel, AssetItem: 3D models, textures`
* `AssetAudio: Sound files`
* `AssetImage: Image textures`
* `AssetVideo: Video textures`

Note: The scene won’t render or initialize until the browser fetches (or errors out) all the assets or the asset system reaches the timeout.

	myCat = AssetImage 'assets/cat.jpg'
	mySong = AssetAudio 'assets/song.mp3'
	myVideo = AssetVideo 'assets/coolMovie.mp4'
	myObject = AssetModel 'assets/object.obj'
	myTexture = AssetItem 'assets/object.mlt'
	myVideo = AssetVideo 'assets/coolMovie.mp4'

### [Setting a Timeout](#asset-setting-a-timeout)

We can set a timeout that when reached, the scene will begin rendering and entities will begin initializing regardless of whether all the assets have loaded. The default timeout is 3 seconds. To set a different timeout, we just pass in the number of milliseconds to the timeout attribute:

If some assets are taking a long time to load, we may want to set an appropriate timeout such that the user isn’t waiting all day in case their network is slow.

	Hologram.assets.timeout = 10000
