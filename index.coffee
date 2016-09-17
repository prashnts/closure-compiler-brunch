'use strict'
compile = require 'google-closure-compiler-js/compile'


class ClosureCompiler
  brunchPlugin: yes
  type: 'javascript'
  extension: 'js'

  constructor: (config) ->
    @config = Object.assign @defaultFlags, config.plugins.closurecompiler

  defaultFlags:
    compilationLevel: 'SIMPLE'
    createSourceMap: yes

  optimize: (file) ->
    {data, path, map = null} = file
    flags = Object.assign {}, @config
    flags.jsCode = [
      src: data
      path: path
      sourceMap: JSON.parse map
    ]
    try
      optimized = compile flags
    catch err
      return Promise.reject err
    finally
      unless optimized.errors.length is 0
        return Promise.reject JSON.stringify optimized.errors, null, 2
      else
        result = data: optimized.compiledCode
        if @config.createSourceMap
          result.map = optimized.sourceMap
        return Promise.resolve result


module.exports = ClosureCompiler
