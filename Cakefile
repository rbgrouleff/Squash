stitch = require 'stitch'
fs = require 'fs'

task 'build', 'Build dist', ->
  package = stitch.createPackage paths: ["#{__dirname}/lib"]
  package.compile (err, source) ->
    fs.writeFileSync "#{__dirname}/dist/squash.js", source
