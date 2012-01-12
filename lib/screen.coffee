Scene = require 'scene'
Timer = require 'timer'

module.exports = class Screen
  constructor: (@canvas) ->
    @context = @canvas.getContext('2d')
    @timer = new Timer
    @timer.registerCallback @redraw

  buildScene: ->
    new Scene(@, @context)

  setCurrentScene: (scene) ->
    @current_scene = scene

  redraw: (time_lapsed) =>
    @current_scene.redraw()

  clear: ->
    @context.clearRect 0, 0, @canvas.width, @canvas.height

  getTimer: ->
    @timer
