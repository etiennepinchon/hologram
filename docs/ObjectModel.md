## [Object Model](#object-model)

### Extends: [Entity](#entity)

Node: We recommend glTF for distributing assets in production over the web. Check out using the glTF component. You can either instead export to COLLADA and use the converter or try out the OBJ converter.

The .OBJ model primitive displays a 3D Wavefront model.

	myTreeObj = AssetItem "assets/tree.obj"
	myTexture = AssetItem "assets/tree.mtl"

	myTree = new ObjectModel
		src: myTreeObj
		mtl: myTexture
		
-------------------------------------------------------

#### [objectModel.src](#objectModel-src) *<string/AssetItem>*

Path to the object to render. 

	myObject = new ObjectModel
		src: "assets/object.obj"
		mtl: "assets/texture.mtl"

-------------------------------------------------------

#### [objectModel.mtl](#objectModel-mtl) *<string/AssetItem>*

Path to the object texture to render. 

-------------------------------------------------------

### [Events](#objectModel-events)

#### [objectModel.onLoad(*callback*)](#objectmodel-onLoad)

	myObject = new ObjectModel
		src: "assets/object.obj"
		mtl: "assets/texture.mtl"
	myObject.onLoad ->
		print "loaded"
