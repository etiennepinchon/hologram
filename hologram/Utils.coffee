Utils = {}

# Difference between 2 arrays
# Return the value A without the values of B find in A
Utils.without = (a, b) ->
	if not Utils.isArray a
		a = [a]
	if not Utils.isArray b
		b = [b]

	a.filter (i) ->
		b.indexOf(i) < 0

Utils.capitalizeFirst = (string) ->
	string.charAt(0).toUpperCase() + string.slice(1)

Utils.first = (arr) -> arr[0]
Utils.last = (arr) -> arr[arr.length-1]

# Assign object to other object
Utils.extend = (a, b) ->
	for key of b
		if b.hasOwnProperty(key)
			a[key] = b[key]
	return a

#-------------------------------------------------------
# Variable check

Utils.isString = (string) ->
	return true if typeof string is 'string'
	return false

Utils.isFunction = (func) ->
	return true if typeof func is 'function'
	return false

Utils.isBoolean = (bool) ->
	return true if typeof bool is 'boolean'
	return false

Utils.isFloat = (float) ->
	return Number(float) is float and float % 1 isnt 0

Utils.isInteger = (int) ->
	return Number.isInteger(int)

Utils.isNumber = (num) ->
	return !isNaN(num)

Utils.isArray = (arr) ->
	return Array.isArray(arr)

Utils.isObject = (obj) ->
	return true if obj and typeof obj is 'object'
	return false

#-------------------------------------------------------
# VALUES

Utils.keys = (object) ->
	return Object.keys(object)

Utils.reset = ->
	Hologram._currentContext.reset() if Hologram._currentContext != undefined

#-------------------------------------------------------
# INTERVAL/DELAY

Delay = (time, f) ->
	timer = setTimeout(f, time * 1000)
	Hologram._currentContext.addTimer(timer)
	return timer

Interval = (time, f) ->
	timer = setInterval(f, time * 1000)
	Hologram._currentContext.addInterval(timer)
	return {
		stop : ->
			clearInterval(timer)
		clear : ->
			clearInterval(timer)
	}

#-------------------------------------------------------
# HANDY FUNCTIONS

Utils.randomColor = ->
	c = -> parseInt(Math.random() * 255)
	return "rgb(#{c()}, #{c()}, #{c()})"

Utils.mapRange = (value, fromLow, fromHigh, toLow, toHigh) ->
	toLow + (((value - fromLow) / (fromHigh - fromLow)) * (toHigh - toLow))

Utils.randomNumber = (a=0, b=1) ->
	# Return a random number between a and b
	Utils.mapRange Math.random(), 0, 1, a, b

Utils.randomID = ->
	Math.floor Math.random() * 100000 + 1

#-------------------------------------------------------
# MATH FUNCTIONS

Utils.round = (value, decimals=0) ->
	d = Math.pow 10, decimals
	Math.round(value * d) / d

#-------------------------------------------------------
# DEVICE

Utils.hasPositionalTracking = -> AFRAME.utils.device.checkHasPositionalTracking()
Utils.isHeadsetConnected = -> AFRAME.utils.device.checkHeadsetConnected()
Utils.isGearVR = -> AFRAME.utils.device.isGearVR()
Utils.isMobile = -> AFRAME.utils.device.isMobile()

#-------------------------------------------------------
# VECTOR

Utils.isVector = (value) -> AFRAME.utils.coordinates.isCoordinate(value)
Utils.parseVector = (value) -> AFRAME.utils.coordinates.parse(value)
Utils.stringifyVector = (value) -> AFRAME.utils.coordinates.stringify(value)

#-------------------------------------------------------
# OBJECT

Utils.deepEqual = (a, b) -> AFRAME.utils.deepEqual(a, b)
Utils.diff = (a, b) -> AFRAME.utils.diff(a, b)

#-------------------------------------------------------
# DOM FUNCTIONS

__domComplete = []
__domReady = false

if __domReady
	__domReady = true

if document?
	document.onreadystatechange = (event) ->
		if document.readyState is 'interactive'
			__domReady = true
			while __domComplete.length
				f = __domComplete.shift()()

Utils.domComplete = (f) ->
	if __domReady
		f()
	else
		__domComplete.push(f)
	return

Utils.domCompleteCancel = (f) ->
	__domComplete = Utils.without(__domComplete, f)
	return

Utils.domValidEvent = (element, eventName) ->
	return if not eventName
	return true if eventName in ["touchstart", "touchmove", "touchend"]
	return typeof(element["on#{eventName.toLowerCase()}"]) isnt "undefined"

Utils.loadScript = (url, callback) ->
	# TODO improve this, maybe
	script = document.createElement "script"
	script.type = "text/javascript"
	script.src = url

	# Then bind the event to the callback function.
	# There are several events for cross browser compatibility.
	if Utils.isFunction callback
		script.onreadystatechange = callback.bind url
		script.onload = callback.bind url

	Utils.domComplete ->
		document.body.appendChild(script)
	return

Utils.insertCSS = (css) ->
	styleElement = document.createElement("style")
	styleElement.type = "text/css"
	styleElement.innerHTML = css

	Utils.domComplete ->
		head = document.head or document.getElementsByTagName('head')[0]
		head.appendChild styleElement

#-------------------------------------------------------
# INSPECTOR

Utils.inspectObjectType = (item) ->
	# This is a hacky way to get nice object names, it tries to
	# parse them from the .toString methods for objects.

	if item._kind? and item._kind != "Object"
		return item._kind

	extract = (str) ->
		return null unless str
		regex = /\[object (\w+)\]/
		match = regex.exec(str)
		return match[1] if match
		return null

	if item.toString
		className = extract(item.toString())
		return className if className

	return "Object"


Utils.inspect = (item, max=5, l=0) ->
	return "null" if item is null
	return "undefined" if item is undefined

	# Return inspector function if exist
	if Utils.isFunction(item.toInspect)
		return item.toInspect()

	# If string -> add "" and escape
	if Utils.isString(item)
		return "\"#{item}\""

	if Utils.isNumber(item)
		return "#{item}"

	# If function -> trim to 50 chars
	if Utils.isFunction(item)
		code = item.toString()["function ".length..].replace(/\n/g, "").replace(/\s+/g, " ")
		# We limit the size of a function body if it's in a strucutre
		limit = 50
		code = "#{Utils.trimRight(code[..limit])}… }" if code.length > limit and l > 0
		return "<Function #{code}>"

	# If array inspect and join
	if Utils.isArray(item)
		return "[...]" if l > max
		return "[" + item.map((i) -> Utils.inspect(i, max, l+1)).join(", ") + "]"

	# If object
	if Utils.isObject(item)
		objectType = Utils.inspectObjectType(item)

		# We should not loop over dom trees because we will have a bad time
		return "<#{objectType}>" if /HTML\w+?Element/.test(objectType)
		if l > max
			objectInfo = "{...}"
		else

			objectInfo = []
			for stuff of item
				objectInfo.push ("#{stuff}:#{Utils.inspect(item[stuff], max, l+1).toString()}")

			objectInfo = "{" + objectInfo.join(", ") + "}"

		return objectInfo if objectType is "Object"
		return "<#{objectType} #{objectInfo}>"

	return "#{item}"

module.exports = Utils
