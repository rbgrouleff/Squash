Scene = require 'scene'

module.exports = class Screen
  constructor: (@canvas) ->
    @context = @canvas.getContext('2d')

  buildScene: ->
    new Scene(@context)

