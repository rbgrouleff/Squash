stitch = require 'stitch'
express = require 'express'

fs = require 'fs'

task 'build', 'Build dist', ->
  package = stitch.createPackage paths: ["#{__dirname}/lib"]
  package.compile (err, source) ->
    fs.writeFileSync "#{__dirname}/dist/squash.js", source

task "test", "Start a test server", ->
  package = stitch.createPackage paths: ["#{__dirname}/lib", "#{__dirname}/test"]
  app = express.createServer()
  app.get '/test.js', package.createServer()
  app.use express.static("#{__dirname}/test/static")
  app.listen 3000
  console.log "Test app listening on port 3000"
