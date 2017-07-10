## [Camera](#camera)

### Extends: [Entity](#entity)

The camera places the user somewhere within the scene. It is an entity that prescribes the camera component with mappings to controls-related components.

Let's add a camera situated at the average height of human eye level (1.6 meters).

	myCamera = new Camera
		userHeight: 1.6


Note: by default a camera is added to the scene, here is how to access it:


	myCamera = Hologram.camera
	myCamera.userHeight = 1.6

-------------------------------------------------------

#### [camera.active](#camera-active) *boolean*

Whether the camera is the active camera in a scene with more than one camera. Default is yes.

	myCamera = new Camera
		active: no

-------------------------------------------------------

#### [camera.far](#camera-far) *integer*

Camera frustum far clipping plane. Default is 10000.

	myCamera = new Camera
		far: 15000

-------------------------------------------------------

#### [camera.fov](#camera-fov) *integer*

Field of view (in degrees). Default is 80.

	myCamera = new Camera
		fov: 70

-------------------------------------------------------

#### [camera.near](#camera-near) *float*

Camera frustum near clipping plane. Default is 0.005.

	myCamera = new Camera
		near: 0.010

-------------------------------------------------------

#### [camera.userHeight](#camera-userheight) *float*

How much height to add to the camera when not in VR mode. The default camera has this set to 1.6 (meters, to represent average eye level.). Default is 0.

	myCamera = new Camera
		userHeight: 1.6

-------------------------------------------------------

#### [camera.zoom](#camera-zoom) *float*

Zoom factor of the camera. Default is 1.

	myCamera = new Camera
		zoom: 1.2

#### [camera.wasdControls](#camera-wasdcontrols) *boolean*

Setting whether the keyboard keys w, a, s, d can move the camera around the scene. Default is yes.

	myCamera = new Camera
		wasdControls: no

#### [camera.mouseCursor](#camera-mousecursor) *boolean*

Add mouse cursor on the camera. A alternative to the cursor useful in development. Default is yes.

	Hologram.camera.mouseCursor = no

-------------------------------------------------------

### [VR Behavior](#camera-vr-behavior)

When not in VR mode, userHeight translates the camera up to approximate average height of human eye level. The injected camera has this set to 1.6 (meters). When entering VR, this height offset is removed such that we used absolute position returned from the VR headset. The offset is convenient for experiences that work both in and out of VR, as well as making experiences look decent from a desktop screen as opposed to clipping the ground if the headset was resting on the ground.

When exiting VR, the camera will restore its rotation to its rotation before it entered VR. This is so when we exit VR, the rotation of the camera is back to normal for a desktop screen.

-------------------------------------------------------

### [Changing the Active Camera](#camera-changing-the-active-camera)

When the active property gets toggled, the component will notify the camera system to change the current camera used by the renderer:

	mySecondCamera = new Camera
		active: yes

-------------------------------------------------------

### [Fixing Entities to the Camera](#camera-fixing-entities-to-the-camera)

To fix entities onto the camera such that they stay within view no matter where the user looks, you can attach those entities as a child of the camera. Use cases might be a heads-up display (HUD).

	myCamera = new Camera()

	myBox = new Box
		position: "0 0 -1"
		parent: myCamera

Note that you should use HUDs sparingly as they cause irritation and eye strain in VR. Consider integrating menus into the fabric of the world itself. If you do create a HUD, make sure that the HUD is more in the center of the field of view such that the user does not have to strain their eyes to read it.
