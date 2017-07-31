window._Image = Image
window.console.silence = ->

Hologram = _properties: {}
Hologram.Version = (require "../dist/Version")
console.log("Hologram Build #{Hologram.Version.build}")

# Vendors
require "../vendors/aframe"
require "../vendors/aframe_gif_shader"
require "../vendors/aframe_effects"
require "../vendors/aframe_look_at"
require "../vendors/aframe_mouse_cursor"

Hologram.define = (name, args) -> Object.defineProperty this, name, args

# Root level modules
Hologram.Utils = (require "./Utils")
Hologram.print = (require "./Print")
Hologram.Color = (require "./Color")
Hologram.Whitespace = (require "./Values").Whitespace
Hologram.Fog = (require "./Values").Fog
Hologram.Side = (require "./Values").Side
Hologram.Shader = (require "./Values").Shader
Hologram.Align = (require "./Values").Align
Hologram.Anchor = (require "./Values").Anchor
Hologram.Baseline = (require "./Values").Baseline
Hologram.Font = (require "./Values").Font
Hologram.Curve = (require "./Values").Curve
Hologram.Direction = (require "./Values").Direction
Hologram.Fill = (require "./Values").Fill

# Entities
Hologram._entityAttribute = (require "./Entity").entityAttribute
Hologram.Entity = (require "./Entity").Entity
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
Hologram.Light = (require "./Light")
Hologram.Line = (require "./Line").Line
Hologram.Portal = (require "./Portal").Portal
Hologram.Model = (require "./Model").Model
Hologram.ObjectModel = (require "./ObjectModel").ObjectModel
Hologram.Octahedron = (require "./Octahedron").Octahedron
Hologram.Plane = (require "./Plane").Plane
Hologram.Ring = (require "./Ring").Ring
Hologram.Animation = (require "./Animation").Animation
Hologram.Assets = (require "./Assets").Assets
Hologram.Scene = (require "./Scene").Scene
Hologram.Sky = (require "./Sky").Sky
Hologram.Sound = (require "./Sound").Sound
Hologram.Sphere = (require "./Sphere").Sphere
Hologram.Tetrahedron = (require "./Tetrahedron").Tetrahedron
Hologram.Text = (require "./Text").Text
Hologram.Torus = (require "./Torus").Torus
Hologram.TorusKnot = (require "./TorusKnot").TorusKnot
Hologram.Triangle = (require "./Triangle").Triangle
Hologram.Video = (require "./Video").Video
Hologram.VideoSphere = (require "./VideoSphere").VideoSphere

# Expend objects
Hologram.Utils.extend(window, Hologram) if window

# Hologram level modules
Hologram.Context = (require "./Context").Context
Hologram.Config = (require "./Config").Config
Hologram.EventEmitter = (require "./EventEmitter").EventEmitter
Hologram.BaseClass = (require "./BaseClass").BaseClass

window.Hologram = Hologram if window

# Registrations
Hologram.registerShader 		= AFRAME.registerShader
Hologram.registerComponent 	= AFRAME.registerComponent
Hologram.registerPrimitive 	= AFRAME.registerPrimitive
Hologram.registerSystem 		= AFRAME.registerSystem
Hologram.registerElement 		= AFRAME.registerElement
Hologram.registerGeometry		= AFRAME.registerGeometry
Hologram.registerModule 		= (name, module)->
	window[name] = Hologram[name] = module
	return

# HandControls
Hologram.define 'leftHand',
	get: ->
		if not @_properties["leftHand"]
			@_properties["leftHand"] = new HandControls('left')
		return @_properties["leftHand"]
Hologram.define 'rightHand',
	get: ->
		if not @_properties["rightHand"]
			@_properties["rightHand"] = new HandControls('right')
		return @_properties["rightHand"]

# Create the default context, set it to invisble by default so
# the preloader can pick it up if it needs to.
Hologram.ready = Utils.domComplete
Utils.domComplete ->
  Hologram.DefaultContext = new Hologram.Context(name: "Default")
  Hologram.DefaultContext.backgroundColor = "white"
  Hologram.CurrentContext = Hologram.DefaultContext
  Hologram.CurrentContext.run()
