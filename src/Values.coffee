# Whitespace
Whitespace = {}
for item in ['normal', 'pre', 'nowrap']
	Whitespace[item] = item
exports.Whitespace = Whitespace

# Fog
Fog = {}
for item in ['linear', 'exponential']
	Fog[item] = item
exports.Fog = Fog

# Side
Side = {}
for item in ['front', 'back', 'double']
	Side[item] = item
exports.Side = Side

# Shader
Shader = {}
for item in ['flat', 'standard', 'gif']
	Shader[item] = item
exports.Shader = Shader

# Align
Align = {}
for item in ['left', 'center', 'right']
	Align[item] = item
exports.Align = Align

# Baseline
Anchor = {}
for item in ['left', 'center', 'right', 'align']
	Anchor[item] = item
exports.Anchor = Anchor

# Baseline
Baseline = {}
for item in ['top', 'center', 'bottom']
	Baseline[item] = item
exports.Baseline = Baseline

# Font
Font = {}
for item in ['roboto', 'aileronsemibold', 'dejavu', 'exo2bold', 'exo2semibold', 'kelsonsans','monoid', 'mozillavr', 'sourcecodepro']
  Font[item] = item
exports.Font = Font

# Animation Curve
Curve = {}
curves = [
	'linear', 'ease', 'easeIn', 'easeOut', 'easeInOut',
	'easeCubic', 'easeInCubic', 'easeOutCubic', 'easeInOutCubic',
	'easeQuad', 'easeInQuad', 'easeOutQuad', 'easeInOutQuad',
	'easeQuart', 'easeInQuart', 'easeOutQuart', 'easeInOutQuart',
	'easeQuint', 'easeInQuint', 'easeOutQuint', 'easeInOutQuint',
	'easeSine', 'easeInSine', 'easeOutSine', 'easeInOutSine',
	'easeExpo', 'easeInExpo', 'easeOutExpo', 'easeInOutExpo',
	'easeCirc', 'easeInCirc', 'easeOutCirc', 'easeInOutCirc',
	'easeElastic', 'easeInElastic', 'easeOutElastic', 'easeInOutElastic',
	'easeBack', 'easeInBack', 'easeOutBack', 'easeInOutBack',
	'easeBounce', 'easeInBounce', 'easeOutBounce', 'easeInOutBounce'
]
for item in curves
	Curve[item] = item
exports.Curve = Curve

# Animation Direction
Direction = {}
for item in ['alternate', 'alternateReverse', 'normal', 'reverse']
	Direction[item] = item
exports.Direction = Direction

# Animation Fill
Fill = {}
for item in ['backwards', 'both', 'forwards', 'none']
	Fill[item] = item
exports.Fill = Fill
