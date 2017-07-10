## [Model](#model)

### Extends: [Entity](#entity)

Add 3D Object to your scene. Supported Object files (.obj/.mtl), Collada (.dae) and glTF (.gltf).

	myModel = new Model
		src: "assets/model.gltf"

-------------------------------------------------------

#### [model.src](#model-src) *string/AssetItem*

Path to the model to render.

	myModel = new Model
		src: "assets/model.gltf"

#### [model.mtl](#model-mtl) *string/AssetItem*

Path to the object texture to render. 

	myModel = new Model
		src: "assets/object.obj"
		mtl: "assets/texture.mtl"

-------------------------------------------------------

### [Events](#model-events)

#### [model.onLoad(*callback*)](#model-onload)

	myModel = new Model
		src: "assets/model.dae"
	myModel.onLoad ->
		print "loaded"
