## [Particles](#particles)

Hologram is built with a particles engine that allows you add particles to your environment.

#### [entity.particles](#particles-particles) *<object>*

To emit particles, simply add the "particles" property to any entity of your choice.

  myGround = new Plane
    width: 40
    height: 40
    position: "0 -1 0"
    color: Color.orange
    particles: yes

  # With more options..
  myBox = new Box
    particles:
      preset: Particles.rain
      maxAge: 10
      size: 0.5

###### Properties
*
		  preset
    Preset configuration. Options are: Particles.default, Particles.dust, Particles.snow, Particles.rain. Default is Particles.default.
*
      maxAge
    The particle's maximum age in seconds. Default is 6.
*
		  type
    The default distribution this emitter should use to control its particle's spawn position and force behaviour. Possible values are 1 (box), 2 (sphere), 3 (disc). Default is 1.
*
      rotationAxis
    Describes this emitter's axis of rotation. Possible values are 'x', 'y' and 'z'. Default is 'x'.
*
		  rotationAngle
    The angle of rotation, given in radians. Dust preset is 3.14. Default is 0.
*
      accelerationValue
    Describes this emitter's base acceleration. Default is '0, -10, 0'.
*
		  accelerationSpread
    Describes this emitter's acceleration variance on a per-particle basis. Default is '10 0 10'.
*
      velocityValue
    Describes this emitter's base velocity. Default is '0 25 0'.
*
      velocityValue
    Describes this emitter's acceleration variance on a per-particle basis. Default is '10 7.5 10'.
*
		  color
    Describes a particle's color. This property is a "value-over-lifetime" property, meaning an array of values can be given to describe specific value changes over a particle's lifetime. Default is "#0000FF,#FF0000".
*
      size
    Describes a particle's size. Default is 1.
*
		  direction
    The direction of the emitter. If value is 1, emitter will start at beginning of particle's lifecycle. If value is -1, emitter will start at end of particle's lifecycle and work it's way backwards. Default is 1.
*
      duration
    The duration in seconds that this emitter should live for. If not specified, the emitter will emit particles indefinitely. Default is null.
*
		  particleCount
    The total number of particles this emitter will hold. NOTE: this is not the number of particles emitted in a second, or anything like that. The number of particles emitted per-second is calculated by particleCount / maxAge (approximately). Default is 1000.
*
      texture
    The texture used by this emitter.
*
		  randomize
    When a particle is re-spawned, whether it's position should be re-randomised or not. Can incur a performance hit. Default is false.
*
      opacity
    Either a single number to describe the opacity of a particle. Default is 1.
*
      blending
    The blending mode of the particles. Possible values are 0 (no blending), 1 (normal), 2 (additive), 3 (subtractive), 4 (multiply). Default is 2.
*
      maxParticleCount
    Default is 250000.
