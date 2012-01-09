module.exports = class Scene
  constructor: (@screen, @context) ->
    @sprites = []

  addSprite: (sprite) ->
    @sprites.push sprite

  redraw: ->
    @screen.clear()
    sprite.draw @context for sprite in @sprites

  draw: (image, x, y) ->
    @context.drawImage image, x, y

  clear: ->
    @screen.clear()
