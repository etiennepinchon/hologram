## [Raycaster](#raycaster)

### Extends: [Entity](#entity)

The hand-controls gives tracked hands (using a prescribed model) with animated gestures. It works with the vive controls and oculus touch controls.
	
	myRaycaster = new Raycaster

-------------------------------------------------------

### Events

#### onGripDown(*callback*)
	
The hand is closed into a fist without thumb raised.

	leftHand = Hologram.leftHand
	leftHand.onGripDown ->
		print "grip down"
		