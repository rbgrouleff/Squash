module.exports = class Scene
  constructor: (@screen, @context) ->
    @sprites = []

  addSprite: (sprite) ->
    @sprites.push sprite

  removeSprite: (sprite) ->
    @sprites = (s for s in @sprites when s isnt sprite)

  redraw: ->
    @screen.clear()
    sprite.draw @context for sprite in @sprites

  clear: ->
    @screen.clear()
