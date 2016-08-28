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
        done()
    return 
