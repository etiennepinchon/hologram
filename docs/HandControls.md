## [Hand Controls](#handcontrols)

### Extends: [Entity](#entity)

The hand-controls gives tracked hands (using a prescribed model) with animated gestures. It works with the vive controls and oculus touch controls.
	
	leftHand = Hologram.leftHand
	rightHand = Hologram.rightHand

-------------------------------------------------------

### [Events](#handcontrols-events)

#### [hand.onGripDown(*callback*)](#handcontrols-ongripdown)
	
The hand is closed into a fist without thumb raised.

	leftHand = Hologram.leftHand
	leftHand.onGripDown ->
		print "grip down"
		
-------------------------------------------------------

#### [hand.onGripUp(*callback*)](#handcontrols-ongripup)
	
The hand is no longer closed into a fist without thumb raised.

	leftHand = Hologram.leftHand
	leftHand.onGripUp ->
		print "grip up"

-------------------------------------------------------

#### [hand.onPointUp(*callback*)](#handcontrols-onpointup)
	
The hand is touching or pressing the trigger only.

	leftHand = Hologram.leftHand
	leftHand.onPointUp ->
		print "point up"

-------------------------------------------------------

#### [hand.onGripDown(*callback*)](#handcontrols-ongripdown)
	
The hand is no longer touching or pressing the trigger only.

	leftHand = Hologram.leftHand
	leftHand.onGripDown ->
		print "point down"

-------------------------------------------------------

#### [hand.onThumbUp(*callback*)](#handcontrols-onthumbup)
	
The hand is closed into a fist with thumb raised.

	leftHand = Hologram.leftHand
	leftHand.onThumbUp ->
		print "thumb up"

-------------------------------------------------------

#### [hand.onThumbDown(*callback*)](#handcontrols-onthumbdown)
	
The hand is no longer closed into a fist with thumb raised.

	leftHand = Hologram.leftHand
	leftHand.onThumbDown ->
		print "thumb down"

-------------------------------------------------------

#### [hand.onPointingStart(*callback*)](#handcontrols-onpointingstart)
	
The hand is pointing with index finger without thumb raised.

	leftHand = Hologram.leftHand
	leftHand.onPointingStart ->
		print "pointing started"
	
-------------------------------------------------------

#### [hand.onPointingEnd(*callback*)](#handcontrols-onpointingend)
	
The hand is no longer pointing without thumb raised.

	leftHand = Hologram.leftHand
	leftHand.onPointingEnd ->
		print "pointing ended"

-------------------------------------------------------

#### [hand.onPistolStart(*callback*)](#handcontrols-onpistolstart)
	
The hand is pointing with index finger and thumb raised.

	leftHand = Hologram.leftHand
	leftHand.onPistolStart ->
		print "pistol start"

-------------------------------------------------------

#### [hand.onPistolEnd(*callback*)](#handcontrols-onpistolend)
	
The hand is no longer pointing with thumb raised.

	leftHand = Hologram.leftHand
	leftHand.onPistolEnd ->
		print "pistol end"

