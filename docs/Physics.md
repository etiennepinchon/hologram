## [Physics](#physics)

Hologram is built with a powerful physics engine that allows you add real life physics in your own VR world!

#### [Configuration](#physics-configuration) *<object>*

First off let's define the physical properties such as friction and restitution (bounciness) of our environment.
Note that by default, your environment has no physics.

  Hologram.physics =
    gravity: -9.8
    friction: 0.01
    restitution: 0.3

###### Properties
*
		gravity
	Force of gravity (in m/s^2). Default is -9.8.
*
		friction
	Coefficient of friction. Default is 0.01.
*
		restitution
	Coefficient of restitution (bounciness). Default is 0.3.

-------------------------------------------------------

#### [entity.dynamic](#physics-dynamic) *<boolean/object>*

When adding a dynamic body to your entity, it becomes a freely-moving object. Dynamic bodies have mass, collide with other objects, bounce or slow during collisions, and fall if gravity is enabled.

  myBox = new Box
    color: Color.orange
    dynamic: yes

  mySphere = new Sphere
    color: Color.red
    dynamic:
      mass: 80

###### Properties
*
		  mass
    Simulated mass of the object, > 0. Default is 5.
*
      shape
    Shape of the simulated object. Shape.auto, Shape.box, Shape.cylinder, Shape.sphere, Shape.hull, Shape.none. Default is Shape.auto.
*
		  linearDamping
    Resistance to movement. Default is 0.01.
*
      angularDamping
    Resistance to rotation. Default is 0.01.

-------------------------------------------------------

#### [entity.static](#physics-static) *<boolean/object>*

When adding a static body to your entity, it becomes a fixed-position or animated object. Other objects may collide with static bodies, but static bodies themselves are unaffected by gravity and collisions.

  myBox = new Box
    color: Color.orange
    static: yes

###### Properties
*
      shape
    Shape of the simulated object. Shape.auto, Shape.box, Shape.cylinder, Shape.sphere, Shape.hull, Shape.none. Default is Shape.auto.

-------------------------------------------------------

#### [entity.constraint](#physics-constraint) *<object>*

The constraint property is used to bind physics bodies together using hinges, fixed distances, or fixed attachment points.

  mySphere = new Sphere
    color: Color.aquamarine
    dynamic: yes

  myBox = new Box
    color: Color.orange
    dynamic: yes
    constraint:
      target: mySphere
      type: Constraint.hinge

###### Properties
*
		  type
    Type of constraint. Options: Constraint.lock, Constraint.distance, Constraint.hinge, Constraint.coneTwist, Constraint.pointToPoint. Default is Constraint.lock.
*
      target
    Selector for a single entity to which current entity should be bound.
*
		  collideConnected
    If true, connected bodies may collide with one another. Default is true.

-------------------------------------------------------

#### [entity.onCollide(*callback*)](#physics-onCollide)

Emitted when an entity collide another that both have physics enabled.

	myBox = new Box
		color: Color.yellow
	myBox.onCollide (event)->
		print "WOW! I just collided an object!"
