class Shape
	constructor: (@x, @y) ->

class Ellipse extends Shape
	constructor: (x, y, @width, @height) ->
		super x, y

ellipse = (x, y, width, height) -> new Ellipse(x, y, width, height)