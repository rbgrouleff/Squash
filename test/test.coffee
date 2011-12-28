window.Squash = require 'squash'

window.screen = new Squash.Screen document.getElementById('canvas')

window.scene = screen.buildScene()

img = new Image
img.src = '/images/simple_sprite.png'
window.sprite = new Squash.Sprite img, 0, 0, 20, 20

scene.render sprite, 90, 90
