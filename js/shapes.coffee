class Shape
	color: "lightgray"
	lineColor: "clear"
	lineWidth: 1

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
			fill: @color
			stroke: "#{@lineWidth}px #{@lineColor}"
		}).add(false)

class Rectangle extends Shape
	constructor: (x, y, @width, @height) ->
		super x, y

	render: (canvas) ->
		canvas.display.rectangle({
			x: @x
			y: @y
			width: @width / 2
			height: @height / 2
			fill: @color
			stroke: "#{@lineWidth}px #{@lineColor}"
		}).add(false)

class Combined extends Shape
	constructor: (@shapes...) ->

	render: (canvas) ->
		shape.render canvas for shape in @shapes

ellipse = (x, y, width, height) -> new Ellipse(x, y, width, height)
rectangle = (x, y, width, height) -> new Rectangle(x, y, width, height)
combine = (shapes...) -> new Combined(shapes...)

# Colors

grayscale = (f) ->
	r = Math.round(f * 255)
	"rgb(#{r}, #{r}, #{r})"

aliceblue = "aliceblue"
antiquewhite = "antiquewhite"
aqua = "aqua"
aquamarine = "aquamarine"
azure = "azure"
beige = "beige"
bisque = "bisque"
black = "black"
blanchedalmond = "blanchedalmond"
blue = "blue"
blueviolet = "blueviolet"
brown = "brown"
burlywood = "burlywood"
cadetblue = "cadetblue"
chartreuse = "chartreuse"
chocolate = "chocolate"
coral = "coral"
cornflowerblue = "cornflowerblue"
cornsilk = "cornsilk"
crimson = "crimson"
cyan = "cyan"
darkblue = "darkblue"
darkcyan = "darkcyan"
darkgoldenrod = "darkgoldenrod"
darkgreen = "darkgreen"
darkgrey = "darkgrey"
darkkhaki = "darkkhaki"
darkmagenta = "darkmagenta"
darkolivegreen = "darkolivegreen"
darkorange = "darkorange"
darkorchid = "darkorchid"
darkred = "darkred"
darksalmon = "darksalmon"
darkseagreen = "darkseagreen"
darkslateblue = "darkslateblue"
darkslategrey = "darkslategrey"
darkturquoise = "darkturquoise"
darkviolet = "darkviolet"
deeppink = "deeppink"
deepskyblue = "deepskyblue"
dimgrey = "dimgrey"
dodgerblue = "dodgerblue"
firebrick = "firebrick"
floralwhite = "floralwhite"
forestgreen = "forestgreen"
fuchsia = "fuchsia"
gainsboro = "gainsboro"
ghostwhite = "ghostwhite"
gold = "gold"
goldenrod = "goldenrod"
green = "green"
greenyellow = "greenyellow"
grey = "grey"
honeydew = "honeydew"
hotpink = "hotpink"
indianred = "indianred"
indigo = "indigo"
ivory = "ivory"
khaki = "khaki"
lavender = "lavender"
lavenderblush = "lavenderblush"
lawngreen = "lawngreen"
lemonchiffon = "lemonchiffon"
lightblue = "lightblue"
lightcoral = "lightcoral"
lightcyan = "lightcyan"
lightgoldenrodyellow = "lightgoldenrodyellow"
lightgray = "lightgray"
lightgreen = "lightgreen"
lightpink = "lightpink"
lightsalmon = "lightsalmon"
lightseagreen = "lightseagreen"
lightskyblue = "lightskyblue"
lightslategrey = "lightslategrey"
lightsteelblue = "lightsteelblue"
lightyellow = "lightyellow"
lime = "lime"
limegreen = "limegreen"
linen = "linen"
magenta = "magenta"
maroon = "maroon"
mediumaquamarine = "mediumaquamarine"
mediumblue = "mediumblue"
mediumorchid = "mediumorchid"
mediumpurple = "mediumpurple"
mediumseagreen = "mediumseagreen"
mediumslateblue = "mediumslateblue"
mediumspringgreen = "mediumspringgreen"
mediumturquoise = "mediumturquoise"
mediumvioletred = "mediumvioletred"
midnightblue = "midnightblue"
mintcream = "mintcream"
mistyrose = "mistyrose"
moccasin = "moccasin"
navajowhite = "navajowhite"
navy = "navy"
oldlace = "oldlace"
olive = "olive"
olivedrab = "olivedrab"
orange = "orange"
orangered = "orangered"
orchid = "orchid"
palegoldenrod = "palegoldenrod"
palegreen = "palegreen"
paleturquoise = "paleturquoise"
palevioletred = "palevioletred"
papayawhip = "papayawhip"
peachpuff = "peachpuff"
peru = "peru"
pink = "pink"
plum = "plum"
powderblue = "powderblue"
purple = "purple"
red = "red"
rosybrown = "rosybrown"
royalblue = "royalblue"
saddlebrown = "saddlebrown"
salmon = "salmon"
sandybrown = "sandybrown"
seagreen = "seagreen"
seashell = "seashell"
sienna = "sienna"
silver = "silver"
skyblue = "skyblue"
slateblue = "slateblue"
slategrey = "slategrey"
snow = "snow"
springgreen = "springgreen"
steelblue = "steelblue"
tan = "tan"
teal = "teal"
thistle = "thistle"
tomato = "tomato"
turquoise = "turquoise"
violet = "violet"
wheat = "wheat"
white = "white"
whitesmoke = "whitesmoke"
yellow = "yellow"
yellowgreen = "yellowgreen"
