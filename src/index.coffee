syspath = require 'path'
fs = require 'fs'
util = require 'util'

module.exports = class CacheManifestBuilder
  brunchPlugin: yes
  type: 'javascript'
  extension: 'coffee'

  constructor: (@config) ->
    null

  compile: (data, path, callback) ->
    #filePath = syspath.join (syspath.dirname path), "cache.manifest2"
    fs.writeFile "bla.txt", data, null
    util.log "test"
    callback null, data

  # onCompile: (generatedFiles) ->
