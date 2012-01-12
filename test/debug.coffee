module.exports = class Logger
  constructor: ->
    @ms = 0
    @ticks = 0

  tick: (ms) =>
    if @ms + ms > 1000
      console.log "FPS: #{@ticks}"
      @ms = 0
      @ticks = 0
    else
      @ms += ms
      @ticks += 1
