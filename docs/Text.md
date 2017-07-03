## [Text](#text)

### Extends: [Entity](#entity)

Add text to your scene.

NOTE: To change the size of the text, use the scale component or position the text closer or further away.

	myText = new Text
		text: "Hello, World!"

-------------------------------------------------------

#### [text.align](#text-align) *<string>*

Multi-line text alignment (Align.left, Align.center, Align.right). Default is Align.left.

	myText = new Text
		text: "Hello, World!"
		align: Align.center

-------------------------------------------------------

#### [text.anchor](#text-anchor) *<string>*

Horizontal positioning (Anchor.left, Anchor.center, Anchor.right, Anchor.align). Default is Anchor.center.

	myText = new Text
		text: "Hello, World!"
		anchor: Anchor.right

-------------------------------------------------------

#### [text.baseline](#text-baseline) *<string>*

Vertical positioning (Baseline.top, Baseline.center, Baseline.bottom). Default is Baseline.center.

	myText = new Text
		text: "Hello, World!"
		baseline: Baseline.center

-------------------------------------------------------

#### [text.color](#text-color) *<color>*

Text color. Default is white.

	myText = new Text
		text: "Hello, World!"
		color: "#00F"

-------------------------------------------------------

#### [text.font](#text-font) *<string>*

Font to render text, either the name of one of Hologram’s stock fonts or a URL to a font file.

	myText = new Text
		text: "Hello, World!"
		font: Font.roboto

##### Available font:

*
		Font.aileronsemibold
*
		Font.dejavu
*
		Font.exo2bold
*
		Font.exo2semibold
*
		Font.kelsonsans
*
		Font.monoid
*
		Font.mozillavr
*
		Font.sourcecodepro

-------------------------------------------------------

### [text.width](#text-width) *<float>*

Set the width of the text block.

	myText = new Text
		text: "Hello, World!"
		width: 5

-------------------------------------------------------

### [text.height](#text-height) *<float>*

Set the height of the text block.

	myText = new Text
		text: "Hello, World!"
		height: 5

-------------------------------------------------------
<!--
### text.letterSpacing *<float>*

Letter spacing in pixels. Default is 0.

	myText = new Text
		text: "Hello, World!"
		letterSpacing: 0.2
-->

### [text.lineHeight](#text-lineheight) *<float>*

Line height in pixels.

	myText = new Text
		text: "Hello, World!"
		lineHeight: 20

-------------------------------------------------------

### [text.transparency](#text-transparency) *<boolean>*

Set the transparency of the text. Default is no.

	myText = new Text
		transparency: yes

-------------------------------------------------------

### [text.opacity](#text-opacity) *<float>*

Set the opacity of the text. Default is 1.

	myText = new Text
		text: "Hello, World!"
		opacity: 0.8

-------------------------------------------------------

### [text.whitespace](#text-whitespace) *<float>*

How whitespace should be handled (i.e., Whitespace.normal, Whitespace.pre, Whitespace.nowrap). Default is Whitespace.normal.

	myText = new Text
		text: "Hello, World!"
		whitespace: Whitespace.pre

-------------------------------------------------------

### [text.zindex](#text-zindex) *<float>*

Z-index to apply to avoid Z-fighting if using with a geometry as a background. Default is 0.001

	myText = new Text
		text: "Hello, World!"
		zindex: 100

-------------------------------------------------------

#### [text.shader](#text-shader) *<string>*

Define the shader to use to render the text on the scene. Default is standard.

	myText = new Text
		shader: Shader.standard

-------------------------------------------------------

#### [text.side](#text-side) *<string>*

Defines which of the face sides will be rendered. Default is front, can be either Side.front, Side.back or Side.both.

	myText = new Text
		side: Side.both
