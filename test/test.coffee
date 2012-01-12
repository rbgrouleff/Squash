window.Squash = require 'squash'

screen = new Squash.Screen document.getElementById('canvas')

scene = screen.buildScene()
screen.setCurrentScene scene

img = new Image
img.src = '/images/simple_sprite.png'
sprite = new Squash.Sprite img, 0, 0, 20, 20

@x = 0
@y = 90

sprite.setPosition(@x, @y)
scene.addSprite sprite

window.timer = screen.getTimer()

@ticks = 0
@ms = 0
timer.registerCallback (timeSinceLastTick) =>
  if @ms + timeSinceLastTick > 1000
    console.log "FPS: #{@ticks}"
    @ms = 0
    @ticks = 0
    sprite.move 10, 0
  else
    @ms += timeSinceLastTick
    @ticks += 1
timer.start()
