## [Line](#line)

### Extends: [Entity](#entity)

The line component draws a line given a start coordinate and end coordinate.

	myLine = new Line
		start: '0 1 0'
		end: '2 0 -5'
		color: Color.red

-------------------------------------------------------

### [line.start](#line-start) *<string>*

Set the start point coordinate. Default is 0 0 0

	myLine = new Line
		start: '0 1 0'

-------------------------------------------------------

### [link.end](#link-end) *<string>*

Set the end coordinate. Default is 0 0 0

	myLine = new Line
		end: '0 1 0'

-------------------------------------------------------

### [link.color](#link-color) *<string>*

Set the color of the line. Default is #74BEC1.

	myLine = new Line
		color: "#FF00CC"

-------------------------------------------------------

### [link.visible](#link-visible) *<string>*

Whether the material visible. Default is true.

	myLine = new Line
		visible: no
