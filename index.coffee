{compile} = require 'google-closure-compiler-js'

class ClosureCompiler
  brunchPlugin: yes
  type: 'javascript'
  extension: 'js'

  constructor: (config = {}) ->
    @config = config?.plugins?.closurecompiler

  optimize: (file) ->
    flags = jsCode: [src: file.data]
    file.data = compile(flags).compiledCode
    Promise.resolve(file)

module.exports = ClosureCompiler

