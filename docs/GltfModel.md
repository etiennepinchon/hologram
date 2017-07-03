## [Gltf Model](#gltf-model)

### Extends: [Entity](#entity)

The glTF model primitive displays a 3D glTF model created from a 3D modeling program or downloaded from the web.
	
	myTreeModel = AssetItem "assets/tree.gltf"
	myTree = new GltfModel
		src: myTreeModel
		
-------------------------------------------------------

#### [gltfModel.src](#gltfmodel-src) *<string/AssetItem>*

Path to the model to render. 

	myModel = new GltfModel
		src: "assets/model.gltf"

### Events

#### [gltfModel.onLoad(*callback*)](#gltfmodel-onload)

	myModel = new GltfModel
		src: "assets/model.gltf"
	myModel.onLoad ->
		print "loaded"
		