{expect} = require 'chai'
Plugin = require '../'

describe 'Plugin', ->
  plugin = null

  beforeEach -> plugin = new Plugin

  it 'should be an object', ->
    expect(plugin).to.be.ok

  it 'should have #optimize method', ->
    expect(plugin.optimize).to.be.an.instanceOf Function

  it 'should compile correctly', (done) ->
    content = 'const x = 1 + 2;'
    expected = 'var x=3;'
    plugin.optimize(data: content)
      .then (data) ->
        expect(data).to.eql(data: expected)
      , done()
    return

  it 'should produce source maps', (done) ->
    content = """
    (function() {
      var foo = 10;
      window.bar = foo * 10;
    })()
    """
    expected =
      data: '(function(){window.bar=100})();'
      map: """{\n"version":3,\n"file":"IGNORED",\n"lineCount":1,
          "mappings":"AAAC,SAAQ,EAAG,CAEVA,MAAAC,IAAA,CAAa,GAFH,CAAX,CAAD;",
          "sources":["file.js"],\n"names":["window","bar"]\n}\n
          """
    file =
      data: content
      path: 'file.js'
    plugin.optimize(file)
      .then (data) ->
        expect(data).to.eql(expected)
      , done()


describe 'Plugin#Customized', ->
  it 'should respect config opts', ->
    plugin = new Plugin plugins: closurecompiler:
      compilationLevel: 'ADVANCED'
    expect(plugin.config.compilationLevel).to.eql 'ADVANCED'

  it 'should not produce source map if configured', (done) ->
    plugin = new Plugin plugins: closurecompiler: createSourceMap: no
    file = data: 'const x = 1 + 2;'
    plugin.optimize(file)
      .then (data) ->
        expect(data.map).to.not.be.ok
      , done()
