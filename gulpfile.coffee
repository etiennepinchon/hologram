_ 								= require "lodash"
async 						= require "async"
gulp 							= require "gulp"
webpack 					= require "webpack"
webpackDevServer 	= require "webpack-dev-server"
rename 						= require "gulp-rename"
template 					= require "gulp-template"
gutil 						= require "gulp-util"
{exec} 						= require "child_process"
coffeelint 				= require 'gulp-coffeelint'
fs 								= require "fs-extra"
path 							= require "path"
http 							= require 'https'
replaceStream 		= require 'replacestream'
config 						= require "./config"

#-------------------------------------------------------------------------------
# CONFIG

WEBPACK =
	entry: "./src/Hologram.coffee"
	module:
		loaders: [
			{test: /\.coffee$/, loader: "coffee-loader"}
		]
	resolve:
		extensions: ["", ".web.coffee", ".web.js", ".coffee", ".js"]
	devtool: "sourcemap"
	cache: true
	quiet: true

#-------------------------------------------------------------------------------
# GULP

gulp.task "vendors", ->
	importVendors()

gulp.task "watch", ["webpack:debug"], ->
	gulp.watch(["./*.coffee", "src/**", "!Version.coffee"], ["webpack:debug"])

gulp.task 'lint', ->
	gulp.src(["./src/**/*.coffee", "!./src/Version.coffee.template", "./gulpfile.coffee"])
		.pipe(coffeelint())
		.pipe(coffeelint.reporter())

gulp.task "version", (callback) ->
	versionInfo (info) ->
		if process.env.WERCKER_GIT_BRANCH
			info.branch = process.env.WERCKER_GIT_BRANCH
			info.hash = info.hash.replace("-dirty", "")
		log "version", "#{info.branch}/#{info.hash} @#{info.build}"
		task = gulp.src("src/Version.coffee.template")
			.pipe(template(info))
			.pipe(rename({
				basename: "Version",
				extname: ".coffee"
			}))
			.pipe(gulp.dest("dist"))
		callback(null, task)

#-------------------------------------------------------------------------------
# WEBPACK

gulp.task "webpack:debug", ["version"], (callback) ->
	config = _.extend WEBPACK,
		debug: true
		output:
			filename: "dist/hologram.debug.js"
			sourceMapFilename: "[file].map?hash=[hash]"

	webpackDev("webpack:debug", config, callback)

gulp.task "webpack:release", ["version"], (callback) ->
	config = _.extend WEBPACK,
		output:
			filename: "dist/hologram.js"
			sourceMapFilename: "[file].map"
			pathinfo: false
		plugins: [
			new webpack.optimize.DedupePlugin(),
			new webpack.optimize.UglifyJsPlugin({
				mangle: false
				compress: {warnings: true}
			})
		]
	webpackDev("webpack:release", config, callback)

gulp.task 'webpack:dev-server', (callback) ->
	config = _.extend WEBPACK,
		debug: true
		output:
			path: __dirname+'/test/default'
			filename: "test/default/hologram.debug.js"
			sourceMapFilename: "[file].map?hash=[hash]"
	new webpackDevServer(webpack(_.clone(config)),
		publicPath: __dirname+'/test/default/'
		stats: colors: true).listen 7070, '127.0.0.1', (err) ->
		if err
		  throw new (gutil.PluginError)('webpack-dev-server', err)
		log 'webpack-dev-server', 'http://localhost:7070/webpack-dev-server'
		return

#-------------------------------------------------------------------------------
# UTILS

log = (task, args...) ->
	gutil.log "[#{gutil.colors.yellow(task)}]", args...

command = (cmd, cb) ->
	exec cmd, {cwd: __dirname}, (err, stdout, stderr) ->
		cb?(null, stdout.split("\n").join(""))

webpackDev = (name, config, callback) ->
	webpackDev._instances ?= {}
	webpackDev._instances[name] ?= webpack(_.clone(config))
	webpackBuilder = webpackDev._instances[name]
	webpackBuilder.run (err, stats) ->
		throw new gutil.PluginError("#{name}", err) if (err)
		log name, gutil.colors.green("All ok")
		callback()

#-------------------------------------------------------------------------------
# VERSION

versionInfo = (callback) ->
	async.series [
		(cb) -> command("git rev-parse --abbrev-ref HEAD", cb) # branch
		(cb) -> command("git describe --always --dirty", cb) # hash
		(cb) -> command("git rev-list --count HEAD", cb) # build
	], (err, results) ->
		callback
			branch: results[0]
			hash: results[1]
			build: results[2]
			date: Math.floor(Date.now() / 1000)

#-------------------------------------------------------------------------------
# VENDORS

importVendors = ->
	log "vendors", gutil.colors.blue("Fetching vendors..")
	if not fs.existsSync(config.VENDORS_PATH) then fs.mkdirSync(config.VENDORS_PATH)
	config.VENDORS.map (vendor) ->
		file_path = config.VENDORS_PATH+"/#{vendor.name}.js"
		if not fs.existsSync(file_path)
			log "vendors", gutil.colors.green("Fetching #{vendor.path}")
			file = fs.createWriteStream(file_path)
			request = http.get vendor.path, (response) ->
				response
					.pipe(replaceStream('new Image;', 'new _Image;')) # replace Image by _Image
					.pipe(replaceStream('console.log(source,material);', '')) # patch for aframe_effects
					.pipe(replaceStream('console.log', 'console.silence'))
					.pipe file
				return
			fs.copySync path.join(config.LOADERS_PATH, "fetch-script.js"), path.join(config.VENDORS_PATH, "fetch-script.js")
			fs.copySync path.join(config.LOADERS_PATH, "gltf-model-next.js"), path.join(config.VENDORS_PATH, "gltf-model-next.js")
	return
