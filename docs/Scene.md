
## [Scene](#scene)

### Extends: [Entity](#entity)

The scene is the global root object, and all entities are contained within the scene.

You don't have to specify the scene when adding an entity to the root element:
    myBox = new Box

But this is also possible and will have the same effect:

    myBox = new Box
        parent: Hologram.scene

-------------------------------------------------------

#### [Hologram.scene.embed](#hologram-scene-embed)  *boolean*

Remove fullscreen styles from the canvas.

    print Hologram.scene.embed = yes

-------------------------------------------------------

#### [Hologram.scene.fog](#hologram-scene-fog) *object*

Add fog to the scene. The fog property obscures entities in fog given distance from the camera.
The fog type can be either linear or exponential.

    Hologram.scene.fog =
        type: Fog.linear
        color: "#AAA"

    # Remove the fog from the scene
    Hologram.scene.fog = null

###### Properties

* `enabled - Whether the fog is enabled.`
* `type - Type of the fog: linear or exponential`
* `color - Color of the fog`

#### [Hologram.scene.stats](#hologram-scene-stats) *boolean*

Toggle performance stats.

    print Hologram.scene.stats = yes

###### Metrics

* `fps - Frames per second, framerate. Aim for stable 90 fps with the WebVR 1.0 API.`
* `requestAnimationFrame (raf) - Latency.`
* `Textures - Number of three.js textures in the scene. A lower count means the scene is using less memory and sending less data to the GPU.`
* `Programs - Number of GLSL shaders in the scene.`
* `Geometries - Number of three.js geometries in the scene. A lower count means the scene is using less memory.`
* `Vertices - Number of vertices in the scene.`
* `Faces - Number of faces in the scene.`
* `Calls - Number of draw calls on each frame.`
* `Load Time - How long it took for the scene to start rendering, in ms.`
* `Entities -Number of A-Frame entities.`
