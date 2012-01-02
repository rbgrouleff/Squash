window.Squash = require 'squash'

window.screen = new Squash.Screen document.getElementById('canvas')

window.scene = screen.buildScene()

img = new Image
img.src = '/images/simple_sprite.png'
window.sprite = new Squash.Sprite img, 0, 0, 20, 20

@x = 90
@y = 90
sprite.draw scene, @x, @y

window.timer = new Squash.Timer

@ticks = 0
@ms = 0
timer.registerCallback (timeSinceLastTick) =>
  if @ms + timeSinceLastTick > 1000
    console.log "FPS: #{@ticks}"
    @ms = 0
    @ticks = 0
    scene.clear()
    @x = @x + 10
    sprite.draw scene, @x, @y
  else
    @ms += timeSinceLastTick
    @ticks += 1
timer.start()
