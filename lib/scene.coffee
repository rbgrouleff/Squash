module.exports = class Scene
  constructor: (@context) ->

  render: (sprite, x, y) ->
    sprite.draw @context, x, y
