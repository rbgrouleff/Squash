module.exports = class Sprite
  constructor: (image, @offset_x, @offset_y, @width, @height) ->
    @image_complete = image.complete
    if not @image_complete
      image.onload = =>
        @image_complete = true
        @initSprite(image)
    else
      @initSprite(image)

  setPosition: (x,y) ->
    @x = x
    @y = y

  move: (x,y) ->
    @x = @x + x
    @y = @y + y

  initSprite: (image) ->
    @img = document.createElement 'canvas'
    @img.width = @width
    @img.height = @height
    ctx = @img.getContext '2d'
    ctx.drawImage image, @offset_x, @offset_y, @width, @height, 0, 0, @width, @height
    @drawCallback?()

  draw: (context) ->
    if @image_complete
      context.drawImage @img, @x, @y
    else
      @drawCallback = =>
        context.drawImage @img, @x, @y
