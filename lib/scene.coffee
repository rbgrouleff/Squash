module.exports = class Scene
  constructor: (@screen, @context) ->
    @sprites = []

  draw: (image, x, y) ->
    @context.drawImage image, x, y

  clear: ->
    @screen.clear()
