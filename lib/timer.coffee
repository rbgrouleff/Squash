requestAnimationFrame = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame
module.exports = class Timer
  constructor: ->
    @callbacks = []

  tick: (timestamp) =>
    delta = timestamp - @last_tick_time
    @last_tick_time = timestamp
    callback(delta) for callback in @callbacks
    requestAnimationFrame @tick if @running

  start: ->
    @running = true
    @last_tick_time = Date.now()
    requestAnimationFrame @tick

  stop: ->
    @running = false

  registerCallback: (callback) ->
    @callbacks.push callback
