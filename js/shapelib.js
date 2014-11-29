screen = canvas = window.canvas;

using = function(object, block) {
  return block.call(object);
};

initShape = function(shape) {
  shape.centerOn = function(other) {
    shape.x = (other.width - shape.width) / 2;
    shape.y = (other.height - shape.height) / 2;
    return shape;
  };
  return shape;
};

redraw = function() {
  return canvas.redraw();
};

show = function(shape) {
  canvas.addChild(shape, false);
  return shape;
};

print = function(x) {
  return console.log(x);
};

image = function(src) {
  var attrs;
  attrs = _.isObject(src) ? src : {
    image: src
  };
  return initShape(canvas.display.image(_.extend({}, attrs)));
};

ellipse = function(x, y, radius_x, radius_y) {
  return initShape(canvas.display.ellipse({
    x: x,
    y: y,
    radius_x: radius_x,
    radius_y: radius_y,
    fill: "lightgray"
  }));
};

rectangle = function(x, y, width, height) {
  var attrs;
  attrs = _.isObject(x) ? x : {
    x: x,
    y: y,
    width: width,
    height: height
  };
  return initShape(canvas.display.rectangle(_.extend({
    fill: "lightgray"
  }, attrs)));
};

text = function(x, y, label) {
  var attrs;
  attrs = _.isObject(x) ? x : {
    x: x,
    y: y,
    text: label
  };
  return initShape(canvas.display.text(_.extend({
    fill: "#333333"
  }, attrs)));
};

line = function(x, y, x2, y2) {
  return initShape(canvas.display.line({
    start: {
      x: x,
      y: y
    },
    end: {
      x: x2,
      y: y2
    },
    stroke: "1px black",
    cap: "round"
  }));
};

polygon = function(x, y, sides, radius, rotation) {
  if (rotation == null) {
    rotation = 0;
  }
  return initShape(canvas.display.polygon({
    x: x,
    y: y,
    sides: sides,
    radius: radius,
    rotation: rotation,
    fill: "lightgray"
  }));
};

font = function(size, family) {
  if (size == null) {
    size = 16;
  }
  if (family == null) {
    family = "helvetica";
  }
  return "" + size + "pt " + family;
};

stroke = function(thickness, color) {
  if (thickness == null) {
    thickness = 1;
  }
  if (color == null) {
    color = "black";
  }
  return "" + thickness + "px " + color;
};

gradient = function(from, to, degrees) {
  if (degrees == null) {
    degrees = 270;
  }
  return "linear-gradient(" + degrees + "deg, " + from + ", " + to + ")";
};

rgba = function(r, g, b, a) {
  if (a == null) {
    a = 1;
  }
  return "rgba(" + r + "," + g + "," + b + "," + a + ")";
};

grayscale = function(f) {
  var r;
  r = Math.round(f * 255);
  return "rgb(" + r + ", " + r + ", " + r + ")";
};
