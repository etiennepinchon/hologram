## [Cursor](#cursor)

### Extends: [Entity](#entity)

The cursor is a reticle that allows for clicking and basic interactivity with a scene on devices that do not have a hand controller. The cursor lets you interact with entities through clicking and gazing. Here is what it does:

* Listens for mouse clicks and gaze-based fuses.
* Captures only the first intersected entity.
* Emits special mouse and hover events (e.g., relating to mouse down/up/enter/leave).

When the mouse clicks, the closest visible entity intersecting the cursor, if any, will emit a click event. Note the cursor component only applies the raycasting behavior. To provide a shape or appearance to the cursor, you could apply the geometry and material components.

	# Enable the cursor
	Hologram.cursor.enabled = true

	myBox = new Box
		color: Color.tomato

	# When the cursor enter the box, the click event is triggered.
	myBox.onClick ->
		print "clicked"

All the cursor events are listed in the [entity events section](#entity-events).


#### [Hologram.cursor.enabled](#cursor-enabled) *boolean*

	Hologram.cursor.enabled = true

#### [Hologram.cursor.fuse](#cursor-fuse) *boolean*

Whether cursor is fuse-based. Default is true.

	Hologram.cursor.fuse = true

#### [Hologram.cursor.fuseTimeout](#cursor-fusetimeout) *float*

How long to wait in seconds before triggering a fuse-based click event. Default is 1.5.

	Hologram.cursor.fuseTimeout = 0.5

#### [Hologram.cursor.maxDistance](#cursor-maxDistance) *float*

How far can the cursor reach. Default is 1000.

	# Max distance of 10 meters
	Hologram.cursor.maxDistance = 10

### [Custom cursor](#cursor-custom)

	# Little red cursor
	Hologram.cursor.color = red
	Hologram.cursor.radiusInner = 0.005
	Hologram.cursor.radiusOuter = 0.01

### [Super custom cursor](#cursor-super-custom)

Note: only for the braves.
Cursors are entities and therefore can be totally changed to your need.

	# Change the position, geometry, material
	Hologram.cursor.position = "0 0 -1"
	Hologram.cursor.geometry = "primitive: ring; radiusInner: 0.02; radiusOuter: 0.03"
	Hologram.cursor.material = "color: black; shader: flat"
