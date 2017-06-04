window._Image = Image
require('../vendors/aframe')
require('../vendors/aframe_gif_shader')

Hologram = {}

# Root level modules
Hologram.Utils = (require "./Utils")
Hologram.print = (require "./Print")

# Entities
Hologram.Entity = (require "./Box").Entity
Hologram.Box = (require "./Box").Box
Hologram.Circle = (require "./Circle").Circle
Hologram.Camera = (require "./Camera").Camera
Hologram.ColladaModel = (require "./ColladaModel").ColladaModel
Hologram.Cone = (require "./Cone").Cone
Hologram.Cursor = (require "./Cursor").Cursor
Hologram.CurvedImage = (require "./CurvedImage").CurvedImage
Hologram.Cylinder = (require "./Cylinder").Cylinder
Hologram.Dodecahedron = (require "./Dodecahedron").Dodecahedron
Hologram.GltfModel = (require "./GltfModel").GltfModel
Hologram.HandControls = (require "./HandControls").HandControls
Hologram.Icosahedron = (require "./Icosahedron").Icosahedron
Hologram.Image = (require "./Image").Image
Hologram.Light = (require "./Light").Light
Hologram.ObjectModel = (require "./ObjectModel").ObjectModel
Hologram.Octahedron = (require "./Octahedron").Octahedron
Hologram.Plane = (require "./Plane").Plane
Hologram.Ring = (require "./Ring").Ring
Hologram.Animation = (require "./Animation").Animation
Hologram.Assets = (require "./Assets").Assets
Hologram.Scene = (require "./Scene").Scene
Hologram.Sky = (require "./Sky").Sky
#Hologram.GradientSky = (require "./GradientSky").Sky
Hologram.Sound = (require "./Sound").Sound
Hologram.Sphere = (require "./Sphere").Sphere
Hologram.Tetrahedron = (require "./Tetrahedron").Tetrahedron
Hologram.Text = (require "./Text").Text
Hologram.Torus = (require "./Torus").Torus
Hologram.TorusKnot = (require "./TorusKnot").TorusKnot
Hologram.Video = (require "./Video").Video
Hologram.VideoSphere = (require "./VideoSphere").VideoSphere

# Components
# ...

# Expend objects
Hologram.Utils.extend(window, Hologram) if window

# Hologram level modules
Hologram.Context = (require "./Context").Context
Hologram.Config = (require "./Config").Config
Hologram.EventEmitter = (require "./EventEmitter").EventEmitter
Hologram.BaseClass = (require "./BaseClass").BaseClass
Hologram.Version = (require "../build/Version")

# Values
Hologram.Values = (require "./Values")
Hologram.Utils.extend(window, Hologram.Values)

window.Hologram = Hologram if window

# Registrations
Hologram.define = (name, args) -> Object.defineProperty this, name, args
Hologram.addShader 		= AFRAME.registerShader
Hologram.addComponent = AFRAME.registerComponent
Hologram.addPrimitive = AFRAME.registerPrimitive
Hologram.addSystem 		= AFRAME.registerSystem
Hologram.addElement 	= AFRAME.registerElement
Hologram.addGeometry	= AFRAME.registerGeometry

# Create the default context, set it to invisble by default so
# the preloader can pick it up if it needs to.
Utils.domComplete ->
  Hologram.DefaultContext = new Hologram.Context(name: "Default")
  Hologram.DefaultContext.backgroundColor = "white"
  Hologram.CurrentContext = Hologram.DefaultContext
  Hologram.CurrentContext.run()
