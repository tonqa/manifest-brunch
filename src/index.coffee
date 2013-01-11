syspath = require 'path'
fs = require 'fs'
util = require 'util'

module.exports = class CacheManifestBuilder
  brunchPlugin: yes

  constructor: (@config) ->
    null

  compile: (data, path, callback) ->
    filePath = syspath.join (syspath.dirname path), "cache.manifest"
    fs.writeFile filePath, data, null
    util.log "test"
    callback null, data

  # onCompile: (generatedFiles) ->
