https://github.com/wizgrav/aframe-effects/blob/master/index.html


Effects.bloom.enabled = true
Effects.bloom.strength = 1
Effects.bloom.strength = 1
  radius: 0.4
  threshold: 0.8

Hologram.scene.effects.bloom

myScene.effects.bloom = yes
myScene.bloom =
  strength: 1
  radius: 0.4
  threshold: 0.8



myScene.effects =
  fxaa: yes
  bloom:
    strength: 1
    radius: 0.4
    threshold: 0.8
  film:
    speed: 1
    nIntensity: 0.5
    sIntensity: 0.05
    sCount: 4096
  outline:
    width: "1. 1"
    range: "0 10"
    strength: 2
    smooth: true
  glitch: yes


* fxaa

* bloom
strength: { default: 1 },
radius: { default: 0.4 },
threshold: { default: 0.8 },
filter: { type: "array", default: ["@default"] }

* film
"speed":       { default: 1.0 },
"nIntensity": { default: 0.5 },
"sIntensity": { default: 0.05 },
"sCount":     { default: 4096 }

* outline
color: { type: "color", default: "#000000" },
width: { type: "vec2", default: new THREE.Vector2(1,1) },
range: { type: "vec2", default: new THREE.Vector2(0,1000) },
strength: {type: "number", default: 1},
ratio: { type: "number", default: 0.5 },
sobel: { default: false },
smooth: { default: false }

* colors
"mode": { default: "map" },
"lut": { type: "selector"},
"lutClamp": { default: false },
"lutFlip": { default: false },
"add": { type: "vec3", default: new THREE.Vector3(0,0,0) },
"mul": { type: "vec3", default: new THREE.Vector3(1,1,1) },
"pow": { type: "vec3", default: new THREE.Vector3(1,1,1) },
"left": { type: "vec3", default: new THREE.Vector3(0,0,0) },
"right": { type: "vec3", default: new THREE.Vector3(1,1,1) },
"min": { type: "vec3", default: new THREE.Vector3(0,0,0) },
"max": { type: "vec3", default: new THREE.Vector3(1,1,1) },
"quant": { type: "vec3", default: new THREE.Vector3(0.2,0.2,0.2) },
"orig": { type: "vec3", default: new THREE.Vector3(1,1,1) },
"red": { type: "vec3", default: new THREE.Vector3(1,0,0) },
"green": { type: "vec3", default: new THREE.Vector3(0,0.5,0.5) },
"blue": { type: "vec3", default: new THREE.Vector3(0,0.5,0.5) },


* glitch
"tDisp":		{ type: "t", value: this.generateHeightmap( 64 ) },
"amount":		{ type: "f", value: 0.08 },
"angle":		{ type: "f", value: 0.02 },
"seed":			{ type: "f", value: 0.02 },
"seed_x":		{ type: "f", value: 0.02 },//-1,1
"seed_y":		{ type: "f", value: 0.02 },//-1,1
"distortion_x":	{ type: "f", value: 0.5 },
"distortion_y":	{ type: "f", value: 0.6 },
"col_s":		{ type: "f", value: 0.05 }
