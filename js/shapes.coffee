class Shape
	fill: "lightgray"
	stroke: "black"
	line: 1

	constructor: (@x, @y) ->

class Ellipse extends Shape
	constructor: (x, y, @width, @height) ->
		super x, y

	render: (canvas) ->
		canvas.display.ellipse({
			x: @x
			y: @y
			radius_x: @width
			radius_y: @height
			fill: @fill
			stroke: "#{@line}px #{@stroke}"
		}).add(false)

class Rectangle extends Shape
	constructor: (x, y, @width, @height) ->
		super x, y

	render: (canvas) ->
		canvas.display.rectangle({
			x: @x
			y: @y
			width: @width
			height: @height
			fill: @fill
			stroke: "#{@line}px #{@stroke}"
		}).add(false)

class Combined extends Shape
	constructor: (@shapes...) ->

	render: (canvas) ->
		shape.render canvas for shape in @shapes

ellipse = (x, y, width, height) -> new Ellipse(x, y, width, height)
rectangle = (x, y, width, height) -> new Rectangle(x, y, width, height)
combine = (shapes...) -> new Combined(shapes...)

# Colors

black = "black"
white = "white"
gray = "gray"

red = "red"
green = "green"
blue = "blue"

grayscale = (f) ->
	r = Math.round(f * 255)
	"rgb(#{r}, #{r}, #{r})"