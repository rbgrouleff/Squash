window.Squash = require 'squash'

window.screen = new Squash.Screen document.getElementById('canvas')

window.scene = screen.buildScene()

img = new Image
img.src = '/images/simple_sprite.png'
window.sprite = new Squash.Sprite img, 0, 0, 20, 20

scene.render sprite, 90, 90

timer = new Squash.Timer

@ticks = 0
@ms = 0
timer.registerCallback (timeSinceLastTick) =>
  if @ms + timeSinceLastTick > 1000
    console.log "FPS: #{@ticks}"
    @ms = 0
    @ticks = 1
  else
    @ms += timeSinceLastTick
    @ticks += 1
timer.start()
