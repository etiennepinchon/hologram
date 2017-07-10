## [Entity](#entity)


Add text to your scene.

To change the size of the text, use the scale component or position the text closer or further away.

	myGroup = new Entity

	myText = new Text
		text: "Hello, World!"
		parent: myGroup

#### [entity.parent](#entity-parent) *entity*

Add child entities to parent entity.

	myParent = new Box
		position: "1 2 3"

	myChild = new Text
		text: "Cool stuff!"
		parent: myParent

	# Will remove myChild from parent
	myChild.parent = null

-------------------------------------------------------

#### [entity.position](#entity-position) *string*

The position component places entities at certain spots in 3D space. Position takes a coordinate value as three space-delimited numbers.
All entities inherently have the position component.

##### Values:

* `x: Left <-> Right`
* `y: Up <-> Down`
* `z: In <-> Out`


	myEntity = new Entity
		position: "0 1 -1"

	myBox = new Box
		position: "3 4 0"

##### Relative Positioning

World-space positions of child entities inherit from parent entities.

	myGroup = new Entity
		position: "1 2 3"

	myChild = new Text
		text: "Hello, World!"
		position: "2 3 4"
		parent: myChild

-------------------------------------------------------

#### [entity.rotation](#entity-rotation) *string*

The rotation component defines the orientation of an entity. It takes the roll (x), pitch (y), and yaw (z) as three space-delimited numbers indicating degrees of rotation.
All entities inherently have the rotation component.

##### Values:

* `x: Roll, rotation about the X-axis.`
* `y: Pitch, rotation about the Y-axis.`
* `z: Yaw, rotation about the Z-axis.`


	myEntity = new Entity
		rotation: "45 90 180"

	myBox = new Box
		rotation: "3 4 0"

##### Relative Rotation

Child entities inherit from world-space rotations from parent entities.

	myGroup = new Entity
		rotation: "0 45 0"

	myChild = new Text
		text: "Hello, World!"
		rotation: "15 45 30"
		parent: myChild

-------------------------------------------------------

#### [entity.scale](#entity-scale) *string*

When aligning our right hand’s thumb with a positive axis, our hand will curl in the positive direction of rotation.
If we set any of the scaling factors to 0, then A-Frame will assign instead a negligible value.

##### Values:

* `x: Scaling factor in the X direction.`
* `y: Scaling factor in the Y direction.`
* `z: Scaling factor in the Z direction.`


	myEntity = new Entity
		scale: "0.5 1 2"

	myText = new Text
		scale: "4 4 4"

##### Reflection

Scaling factors can be negative, which results in a reflection.

A notable use for this is for sky spheres. Sky spheres contain the entire scene and have a texture mapped on the interior surface. To do this, we can reflect, or invert, the sphere in the Z-direction.

	mySky = new Sky
		src: "assets/sky.png"
		scale: "1 1 -1"

-------------------------------------------------------

#### [entity.visible](#entity-visible) *boolean*

Whether to render an entity. If true the entity will be rendered and visible. Default is true.

	myText = new Text
		text: "Hello, World!"
		visible: no

-------------------------------------------------------

#### [entity.lookAt](#entity-lookat) *entity*

Tell an entity to face towards another entity or position.

	myBox = new Box
		position: "3 0 3"

	# Will be oriented towards myBox direction
	myOtherBox = new Box
		lookAt: myBox

-------------------------------------------------------

#### [entity.link](#entity-link) *entity*

Add an hyperlink to your entity.

	myBox = new Box
		link:
			href: "index.html"
			title: "My Homepage"
			image: "assets/homeThumbnail.png"
			visualAspectEnabled: no
		position: "3 0 3"

##### Values:

* `color: Background color of the portal. Default #FFF`
* `highlighted: Boolean to toggle link highlight color.	Default is false.`
* `highlightedColor: Border color when highlighted. Default is #24CAFF`
* `href: Destiantion URL where the link points to.`
* `image: 360° image used as scene preview in the portal.`
* `peekMode: Whether the 360° image is fully expanded for preview. Default is false.`
* `title: Text displayed on the link. The href or page URL is used if not defined.`
* `visualAspectEnabled: Whether to enable the default visual appearance of a portal. Set to false if we want to implement our own pattern or form of link traversal. Default is true.`

-------------------------------------------------------

#### [entity.shadow](#entity-shadow) *entity*

Enable shadows to your entity.

	myBox = new Box
		shadow: yes
		position: "3 0 3"

-------------------------------------------------------

### [Events](#entity-events)

#### [entity.onClick(*callback*)](#entity-onclick)

Emitted on both cursor and intersected entity if a currently intersected entity is clicked (whether by mouse or by fuse).

	myBox = new Box
		color: Color.darkblue
	myBox.onClick ->
		print "clicked!"

-------------------------------------------------------

#### [entity.onFusing(*callback*)](#entity-onfusing)

Emitted on both cursor and intersected entity when fuse-based cursor starts counting down.

	myBox = new Box
		color: Color.lavender
	myBox.onFusing ->
		print "fuse!"

-------------------------------------------------------

#### [entity.onMouseDown(*callback*)](#entity-onmousedown)

Emitted on both cursor and intersected entity (if any) on mousedown on the canvas element.

	myBox = new Box
		color: Color.gold
	myBox.onMouseDown ->
		print "mouse down on me!"

-------------------------------------------------------

#### [entity.onMouseUp(*callback*)](#entity-onmouseup)

Emitted on both cursor and intersected entity (if any) on mouseup on the canvas element.

	myBox = new Box
		color: Color.turquoise
	myBox.onMouseUp ->
		print "mouse up!"

-------------------------------------------------------

#### [entity.onMouseIn(*callback*)](#entity-onmousein)

Emitted on both cursor and intersected entity (if any) when cursor intersects with an entity.

	myBox = new Box
		color: Color.yellow
	myBox.onMouseUp ->
		print "mouse in!"

-------------------------------------------------------

#### [entity.onMouseOut(*callback*)](#entity-onmouseout)

Emitted on both cursor and intersected entity (if any) when cursor no longer intersects with previously intersected entity.

	myBox = new Box
		color: Color.silver
	myBox.onMouseOut ->
		print "mouse out!"

-------------------------------------------------------

#### [entity.onCollide(*callback*)](#entity-onCollide)

Emitted when an entity collide another that both have physics enabled. Read [the physics section](#physics) for more info.

	myBox = new Box
		color: Color.yellow
	myBox.onCollide (event)->
		print "WOW! I just collided an object!"
