syspath = require 'path'
fs = require 'fs'

module.exports = class CacheManifestBuilder
  brunchPlugin: yes
  type: 'javascript'
  extension: 'js'

  compile: (data, path, callback) ->
  	filePath = syspath.join (syspath.dirname path), "cache.manifest"
    # fs.writeFile filePath, data, null
	callback err, data

  constructor: (@config) ->
    null

  # onCompile: (generatedFiles) ->
