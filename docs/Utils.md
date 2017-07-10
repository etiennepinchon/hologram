## [Utils](#utils)

Hologram utility modules to help you create cool stuff faster!

-------------------------------------------------------

### [Basics](#utils-basics)

#### [Utils.round(*value, decimals=0*)](#utils-round)

Rounds a number.

##### Arguments

* `value - A floating point number.`
* `decimals - The amount which appear after the decimal point. (Optional)`


	print Utils.round(100.12345, 0)
	# Output: 100

	print Utils.round(100.12345, 2)
	# Output: 100.12

	print Utils.round(100.12345, 4)
	# Output: 100.1234

-------------------------------------------------------

#### [Utils.randomColor()](#utils-randomcolor)

Returns a random color with the specified opacity.

	print Utils.randomColor()
	# Output: 'rgba(124, 12, 33, 0.5)'

-------------------------------------------------------

#### [Utils.randomNumber(*a, b*)](#utils-randomnumber)

Generate a random number between a and b.

##### Arguments

* `a - A number, the first value of the range.`
* `b - A number, the final value of the range.`


	print Utils.randomNumber(0, 1)
	# Output: 0.2

	print Utils.randomNumber(0, 100)
	# Output: 22

-------------------------------------------------------

#### [Utils.capitalizeFirst(*string*)](#utils-capitalizefirst)

Capitalize the first letter of a string.

	print Utils.capitalizeFirst('we do not remember days, we remember moments.')
	# Output: 'We do not remember days, we remember moments.'

-------------------------------------------------------

### [Delay, Interval](#utils-delay-interval)

#### [Utils.delay(*delay, handler*)](#utils-delay)

Calls a function after a certain day defined in seconds.

##### Arguments

* `delay - Delay in seconds.`
* `handler - Callback function.`


	Utils.delay 0.5, ->
		print 'hello'
	# Output: 'hello', after 0.5 seconds

-------------------------------------------------------

#### [Utils.interval(*interval, handler*)](#utils-interval)

Calls a function every x seconds.

##### Arguments

* `interval - Interval in seconds.`
* `handler - Callback function.`


	Utils.interval 2, ->
		print 'hello'
	# Output: 'hello'
	# Output: 'hello'
	# Output: 'hello'  etc...

-------------------------------------------------------

### [Device](#utils-device)

#### [Utils.hasPositionalTracking()](#utils-haspositionaltracking)

Checks if there is positional tracking available. Returns a boolean.

	print Utils.hasPositionalTracking()
	# Output: true

-------------------------------------------------------

#### [Utils.isHeadsetConnected()](#utils-isheadsetconnected)

Checks if a VR headset is connected by looking for orientation data. Returns a boolean.

	print Utils.isHeadsetConnected()
	# Output: true

-------------------------------------------------------

#### [Utils.isGearVR()](#utils-isgearvr)

Checks if device is Gear VR. Returns a boolean.

	print Utils.isGearVR()
	# Output: false

-------------------------------------------------------

#### [Utils.isMobile()](#utils-ismobile)

Checks if device is a smartphone. Returns a boolean.

	print Utils.isMobile()
	# Output: true

-------------------------------------------------------

### [Vectors](#utils-vectors)

#### [Utils.isVector(*value*)](#utils-isVector)

Tests whether a string is a vec3.

	print Utils.isCoordinate('4 2 2')
	# Output: true

-------------------------------------------------------

#### [Utils.parseVector(*value*)](#utils-parseVector)

Parses an “x y z” string to an {x, y, z} vec3 object. Or parses an “x y z w” string to an {x, y, z, w} vec4 object.

	print Utils.parse('-6 2 3')
	# Output: {x: -6, y: 2, z: 3}


-------------------------------------------------------

#### [Utils.stringifyVector(*data*)](#utils-stringifyVector)

Stringifies an {x, y, z} vec3 object to an “x y z” string.

	print Utils.stringifyVector({x: 1, y: 2, z: -3})
	# Output: "1 2 -3"

-------------------------------------------------------

### [Objects](#utils-objects)

#### [Utils.deepEqual(*a, b*)](#utils-deepequal)

Checks if two objects have the same attributes and values, including nested objects.

	print Utils.deepEqual({a: 1, b: {c: 3}}, {a: 1, b: {c: 3}})
	# Output: true

-------------------------------------------------------

#### [Utils.diff(*a, b*)](#utils-diff)

Returns difference between two objects. The returned object’s set of keys denote which values were not equal, and the set of values are b‘s values.

	print Utils.diff({a: 1, b: 2, c: 3}, {b: 2, c: 4})
	# Output: {"a": undefined, "c": 4}

-------------------------------------------------------

### [Variable checks](#utils-variable-checks)

#### [Utils.isString(*value*)](#utils-isstring)

Returns true if object is a String.

	print Utils.isString("Steve")
	# Output: true

-------------------------------------------------------

#### [Utils.isFunction(*value*)](#utils-isfunction)

Returns true if object is a Function.

	print Utils.isFunction(alert)
	# Output: true

-------------------------------------------------------

#### [Utils.isBoolean(*value*)](#utils-isboolean)

Returns true if object is a boolean.

	a = false
	print Utils.isBoolean(a)
	# Output: true

-------------------------------------------------------

#### [Utils.isFloat(*value*)](#utils-isfloat)

Returns true if object is a float.

	print Utils.isFloat(3.14)
	# Output: true

-------------------------------------------------------

#### [Utils.isInteger(*value*)](#utils-isinteger)

Returns true if object is a integer.

	print Utils.isInteger(42)
	# Output: true

-------------------------------------------------------

#### [Utils.isNumber(*value*)](#utils-isnumber)

Returns true if object is a number.

	print Utils.isNumber(8.4 * 5)
	# Output: true

-------------------------------------------------------

#### [Utils.isArray(*value*)](#utils-isarray)

Returns true if object is an Array.

	print Utils.isArray([1,2,3])
	# Output: true

-------------------------------------------------------

#### [Utils.isObject(*value*)](#utils-isobject)

Returns true if value is an Object. Note that JavaScript/Coffeescript arrays and functions are objects, while (normal) strings and numbers are not.

	print Utils.isArray({})
	# Output: true

	print Utils.isArray(1)
	# Output: false

-------------------------------------------------------

### [Array, Object](#utils-array-object)

#### [Utils.first(*array*)](#utils-first)

Return first key of array

	myArray = ['a', 'b', 'c']
	Utils.first(myArray)
	# Output: 'a'

-------------------------------------------------------

#### [Utils.last(*array*)](#utils-last)

Return last key of array

	myArray = ['a', 'b', 'c']
	Utils.last(myArray)
	# Output: 'c'

-------------------------------------------------------

#### [Utils.keys(*object*)](#utils-keys)

Return the keys of an object

	myObject = {'a': {}, 'b': [], 'c': 5}
	Utils.keys(myObject)
	# Output: ['a', 'b', 'c']
