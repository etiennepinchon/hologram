## [Animation](#animation)

Animate entities is fairly simple, here is a first example:

	myBox = new Box
		color: Color.cyan
		position: "5 0 0"
	myBox.animate
		rotation: "0 360 0"
		time: 3
		direction: Direction.reverse
		then: ->
			print "animation done"

Alternatively you can also use the Animation object which allow you to start then animation whenever you desire:

	myBox = new Box
		color: Color.cyan
		position: "5 0 0"

	myAnimation = new Animation
		entity: myBox
		rotation: "0 360 0"
		time: 3
		direction: Direction.reverse
		then: ->
			print "animation done"

	myAnimation.start()

-------------------------------------------------------

#### [animate.time](#animation-time) *float*

Duration in seconds of the animation. Default is 1.

	myCone = new Cone
		color: Color.aquamarine
	myCone.animate
		position: "4 0 0"
		time: 4

-------------------------------------------------------

#### [animate.delay](#animation-delay) *float*

Delay in seconds before starting the animation. Default is 0.

	myLight = new Light
		intensity: 1
	myLight.animate
		intensity: 3
		time: 4
		delay: 0.5

-------------------------------------------------------

#### [animate.direction](#animation-direction) *string*

The direction attribute defines which way to animate between the starting value and the final value.
When we define an alternating direction, the animation will go back and forth between the from and to values like a yo-yo. Alternating directions only take affect when we repeat the animation.

	myCone = new Cone
		color: Color.red
	myCone.animate
		position: "4 0 0"
		time: 4
		direction: reverse

##### Direction available:

* `Direction.alternate`
* `Direction.alternateReverse`
* `Direction.normal`
* `Direction.reverse`

-------------------------------------------------------

#### [animate.repeat](#animation-repeat) *float*

The repeat attribute defines how often the animation repeats. Default is 0.

	myCone = new Cone
		color: Color.green
	myCone.animate
		position: "4 0 0"
		time: 4
		repeat: 10

-------------------------------------------------------

#### [animate.curve](#animation-curve) *string*

Easing function of the animation. There are very many to choose from. Default is ease.

##### Curves available:

###### Basic effects

* `Curve.linear`
* `Curve.ease`
* `Curve.easeIn`
* `Curve.easeOut`
* `Curve.easeInOut`

###### More effects

* `Curve.easeCubic Curve.easeInCubic Curve.easeOutCubic Curve.easeInOutCubic`
* `Curve.easeQuad Curve.easeInQuad Curve.easeOutQuad Curve.easeInOutQuad`
* `Curve.easeQuart Curve.easeInQuart Curve.easeOutQuart Curve.easeInOutQuart`
* `Curve.easeQuint Curve.easeInQuint Curve.easeOutQuint Curve.easeInOutQuint`
* `Curve.easeSine Curve.easeInSine Curve.easeOutSine Curve.easeInOutSine`
* `Curve.easeExpo Curve.easeInExpo Curve.easeOutExpo Curve.easeInOutExpo`
* `Curve.easeCirc Curve.easeInCirc Curve.easeOutCirc Curve.easeInOutCirc`
* `Curve.easeElastic Curve.easeInElastic Curve.easeOutElastic Curve.easeInOutElastic`
* `Curve.easeBack Curve.easeInBack Curve.easeOutBack Curve.easeInOutBack`
* `Curve.easeBounce Curve.easeInBounce Curve.easeOutBounce Curve.easeInOutBounce`


#### [animate.fill](#animation-fill) *string*

The fill attribute defines the effect of animation when not actively in play. Think of fill as what values the animation sets on the entity before and/or after each animation cycle. Below are the possible values for fill and their effects. Default is forwards.

* `Fill.backwards`
* `Fill.both`
* `Fill.forwards`
* `Fill.none`

-------------------------------------------------------

#### [animate.then](#animation-then) *function*

Called when the animation finishes. In case of repeats, emitted when the repeat count reaches 0. Not emitted for indefinite repeats.

	myCone = new Cone
		color: Color.yellow
	myCone.animate
		position: "4 0 0"
		time: 4
		then: ->
			print "I am done!"
