Janitor = require 'janitor'
jsdom = require('jsdom').jsdom

Squash = require '../.'

module.exports = class extends Janitor.TestCase
  setup: ->
    document = jsdom "<html><body></body></html>", null,
      features:
        FetchExternalResources: false
    @canvas = document.createElement "canvas"

  'test instantiate Screen': ->
    screen = new Squash.Screen @canvas
    @assert screen
