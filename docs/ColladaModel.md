## [Collada Model](#collada-model)

### Extends: [Entity](#entity)

The COLLADA model primitive displays a 3D COLLADA model created from a 3D modeling program or downloaded from the web.

	myTreeModel = AssetItem "assets/tree.dae"
	myTree = new ColladaModel
		src: myTreeModel

-------------------------------------------------------

#### [colladaModel.src](#colladamodel-src) *<string/AssetItem>*

Path to the model to render.

	myModel = new ColladaModel
		src: "assets/model.dae"

-------------------------------------------------------

### Events

#### [colladaModel.onLoad(*callback*)](#colladamodel-onload)

	myModel = new ColladaModel
		src: "assets/model.dae"
	myModel.onLoad ->
		print "loaded"
