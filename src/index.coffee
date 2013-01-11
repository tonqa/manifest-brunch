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
    fs.writeFile "/Users/alexander/Development/Orderbird/orderbird.myorderbird_client/client/public/bla.txt", data, ->
      util.log "test"
      callback null, data


  # onCompile: (generatedFiles) ->
