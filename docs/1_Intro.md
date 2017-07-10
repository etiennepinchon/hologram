# Docs

Hologram allow you to building virtual reality (VR) experiences. It is focus on simplicity and fun.
It is easy to get started with Hologram. With the scene editor, you don't even need a single line of code to create your first scene!
Hologram supports most VR headsets such as Vive, Rift, Daydream, GearVR, Cardboard.

## [Get started](#getstarted)


1. Entities

  Entities can be Box, Sphere, Plane, Sky and more. They have a hierachy and properties defining their position, rotation, scale, appearance and interactivity.

  [More on Entities](#entity)

2. Animation

  Animate states or layer properties like scale and color with various easing or spring curves, repeat and delay options and more.

  [More on Animation](#animation)

4. Events

  Events are used to detect and respond to user interactions in VR when clicking or gazing, animations that start or end, repond to physics events and more.

  [More on Events](#entity-events)

3. Assets

  Assets can be images, sounds, video, 3D models. The asset management system allows you to place your assets in one place and to preload and cache assets for better performance.

  [More on Assets](#assets)



### [Simple example](#getstarted-example)

Here is a simple example to get you started!

    myBox = new Box
      position: "-1 0.5 -3"
      rotation: "0 45 0"
      color: "#4CC3D9"

    mySphere = new Sphere
      position: "0 1.25 -5"
      radius: 1.25
      color: "#EF2D5E"

    myCylinder = new Cylinder
      position: "1 0.75 -3"
      radius: 0.5
      color: "#EF2D5E"

    myPlane = new Plane
      position: "0 0 -4"
      rotation: "-90 0 0"
      width: 4
      height: 4
      color: "#7BC8A4"

    mySky = new Sky
      color: "#ECECEC"
