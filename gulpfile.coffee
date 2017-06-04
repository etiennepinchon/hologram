_ 					= require("lodash")
async 			= require("async")
gulp 				= require("gulp")
webpack 		= require("webpack")
rename 			= require("gulp-rename")
template 		= require("gulp-template")
gutil 			= require("gulp-util")
{exec} 			= require("child_process")
coffeelint 	= require('gulp-coffeelint')

#-------------------------------------------------------
# Base webpack config

WEBPACK =
	entry: "./hologram/Hologram.coffee"
	module:
		loaders: [
			{test: /\.coffee$/, loader: "coffee-loader"}
		]
	resolve:
		extensions: ["", ".web.coffee", ".web.js", ".coffee", ".js"]
	devtool: "sourcemap"
	cache: true
	quiet: true

#-------------------------------------------------------
# Gulp tasks

gulp.task "vendors", ->
	importVendors()

gulp.task "watch", ["webpack:debug"], ->
	gulp.watch(["./*.coffee", "hologram/**", "!Version.coffee"], ["webpack:debug"])

gulp.task 'lint', ->
	gulp.src(["./hologram/**/*.coffee", "!./hologram/Version.coffee.template", "./gulpfile.coffee", "scripts/site_builder.coffee"])
		.pipe(coffeelint())
		.pipe(coffeelint.reporter())

gulp.task "version", (callback) ->
	versionInfo (info) ->

		# If we are on the wercker platform, we need to get the branch
		# name from the env variables and remove the dirty from version.
		if process.env.WERCKER_GIT_BRANCH
			info.branch = process.env.WERCKER_GIT_BRANCH
			info.hash = info.hash.replace("-dirty", "")

		log "version", "#{info.branch}/#{info.hash} @#{info.build}"

		task = gulp.src("hologram/Version.coffee.template")
			.pipe(template(info))
			.pipe(rename({
				basename: "Version",
				extname: ".coffee"
			}))
			.pipe(gulp.dest("build"))

		callback(null, task)

#-------------------------------------------------------
# Webpack tasks

gulp.task "webpack:debug", ["version"], (callback) ->
	config = _.extend WEBPACK,
		debug: true
		output:
			filename: "build/hologram.debug.js"
			sourceMapFilename: "[file].map?hash=[hash]"

	webpackDev("webpack:debug", config, callback)

gulp.task "webpack:release", ["version"], (callback) ->

	config = _.extend WEBPACK,
		output:
			filename: "build/hologram.js"
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

  # Start a webpack-dev-server
	new webpackDevServer(webpack(_.clone(config)),
		publicPath: __dirname+'/test/default/'
		stats: colors: true).listen 8080, 'localhost', (err) ->
		if err
		  throw new (gutil.PluginError)('webpack-dev-server', err)
		log 'webpack-dev-server', 'http://localhost:8080/webpack-dev-server'
		return

#-------------------------------------------------------
# Utils

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

importVendors = ->
	http 					= require 'https'
	fs 						= require 'fs'
	replaceStream = require 'replacestream'

	vendors = [
			name: 'aframe'
			path: 'https://aframe.io/releases/0.5.0/aframe.min.js'
		,
			name: 'aframe_gif_shader'
			path: 'https://rawgit.com/mayognaise/aframe-gif-shader/master/dist/aframe-gif-shader.min.js'
	]
	dir = './vendors'

	if not fs.existsSync(dir)
	    fs.mkdirSync(dir)
	vendors.map (vendor) ->
		file_path = dir+"/#{vendor.name}.js"
		if not fs.existsSync(file_path)
			log "vendors", gutil.colors.green("Fetching #{vendor.path}")
			file = fs.createWriteStream(file_path)
			request = http.get(vendor.path, (response) ->
				response
					.pipe(replaceStream('new Image;', 'new _Image;'))
					.pipe file
				return
			)
