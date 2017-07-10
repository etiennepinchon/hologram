{ObjectModel} = require "./ObjectModel"
{ColladaModel} = require "./ColladaModel"
{GltfModel} = require "./GltfModel"

exports.Model = (options)->

  if options.src
    options.src = Utils.parseAssets(options.src)
    file_ext = options.src.split('.').pop()
    if file_ext is 'obj'
      if not options.mtl
        options.mtl = options.src.replace(".obj", ".mtl")
      return new ObjectModel(options)
    else if file_ext is 'dae'
      return new ColladaModel(options)
    else if file_ext is 'gltf'
      return new GltfModel(options)
    else
      console.log "[ERR] - Model type not supported."
  return null
