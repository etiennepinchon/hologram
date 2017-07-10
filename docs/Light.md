## [Light](#light)

### Extends: [Entity](#entity)

Add a source of light to your scene. Light affects all materials that have not specified a flat shading model with shader: flat. Note that lights are computationally expensive we should limit number of lights in a scene.

	myLight = new Light
		color: "#AFA"
		intensity: 1.5
		position: "-1 1 0"

By default, Hologram scenes have a default lighting: an ambient light and a directional light. Whenever you add any lights, Hologram will removes the default lights from the scene.

-------------------------------------------------------

#### [light.type](#light-type) *string*
Set the type of light. Default is no.

##### [Ambient](#light-type-ambient)
Ambient lights globally affect all entities in the scene. The color and intensity properties define ambient lights. Additionally, position, rotation, and scale have no effect on ambient lights. It is recommend to have some form of ambient light such that shadowed areas are not fully black and to mimic indirect lighting.

	myLight = new Light
		type: Light.ambient
		color: "#CCC"

-------------------------------------------------------

##### [Directional](#light-type-directional)
Directional lights are like a light source that is infinitely far away, but shining from a specific direction, like the sun. Thus, absolute position do not have an effect on the intensity of the light on an entity. The example below creates a light source shining from the upper-left at a 45-degree angle. Note that because only the vector matters, position "-100 100 0" and position "-1 1 0" are the same.

	myLight = new Light
		type: Light.directional
		color: "#EEE"
		intensity: 0.5
		position: "-1 1 0"

We can specify the direction of the directional light with its orientation by creating a child entity it targets. For example, pointing down its -Z axis:

	myLight = new Light
		type: Light.directional
		position: "0 0 0"
		rotation:"-90 0 0"

	myLightEntity = new Entity
		position:"0 0 -1"
		parent: myLight

	myLightEntity.target = myLightEntity

-------------------------------------------------------

##### [Hemisphere](#light-type-hemisphere)
Hemisphere lights are like an ambient light, but with two different colors, one from above (color) and one from below (groundColor). This can be useful for scenes with two distinct lighting colors (e.g., a grassy field under a gray sky).

	myLight = new Light
		type: Light.hemisphere
		color: "#33C"
		groundColor: "#3C3"
		intensity: 2

###### Property

* `groundColor: Light color from below.`

-------------------------------------------------------

##### [Point](#light-type-point)
Point lights, unlike directional lights, are omni-directional and affect materials depending on their position and distance. Point likes are like light bulb. The closer the light bulb gets to an object, the greater the object is lit.

	myLight = new Light
		type: Light.point
		distance: 50
		decay: 2
		intensity: 0.75
		position: "0 10 10"

###### Properties
* `decay: Amount the light dims along the distance of the light. Default is 1.0.`
* `distance: Distance where intensity becomes 0. If distance is 0, then the point light does not decay with distance. Default is 0.0.`

-------------------------------------------------------

##### [Spot](#light-type-spot)
Spot lights are like point lights in the sense that they affect materials depending on its position and distance, but spot lights are not omni-directional. They mainly cast light in one direction, like the Bat-Signal.

	myLight = new Light
		type: Light.spot

###### Properties
* `angle: Maximum extent of spot light from its direction (in degrees). Default is 60.`
* `decay: Amount the light dims along the distance of the light. Default is 1.0.`
* `distance: Distance where intensity becomes 0. If distance is 0, then the point light does not decay with distance. Default is 0.0.`
* `penumbra: Percent of the spotlight cone that is attenuated due to penumbra. Default is 0.0.`
* `target: Element the spot should point to. set to null to transform spotlight by orientation, pointing to it’s -Z axis. Default is 1.0.`

-------------------------------------------------------

#### [light.color](#light-color) *color*

Defines the color of the cube. Default is white.

	myLight = new Light
		color: Color.tomato

#### [light.intensity](#light-intensity) *float*

Defines the intensity of the light. Default is 1.0.

	myLight = new Light
		intensity: 2.0

#### [light.castShadow](#light-castShadow) *float*

Whether this light casts shadows on the scene. Default is false.
Note that shadows are supported by Point, Spot and Directional lights.

	myLight = new Light
		castShadow: yes
