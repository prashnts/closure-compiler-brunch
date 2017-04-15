## closure-compiler-brunch

Adds [Closure Compiler JS](https://github.com/google/closure-compiler-js) support to [brunch](http://brunch.io).

The Closure Compiler tool can produce highly optimized JavaScript code by static analysis, dead code removal and minification.

This plugin leverages the JavaScript implementation of Closure Compiler, hence _Java is not required_.

[![Build Status](https://travis-ci.org/prashnts/closure-compiler-brunch.svg?branch=master)](https://travis-ci.org/prashnts/closure-compiler-brunch)
[![Test Coverage](https://codeclimate.com/github/prashnts/closure-compiler-brunch/badges/coverage.svg)](https://codeclimate.com/github/prashnts/closure-compiler-brunch/coverage)
[![Greenkeeper badge](https://badges.greenkeeper.io/prashnts/closure-compiler-brunch.svg)](https://greenkeeper.io/)

[![NPM](https://nodei.co/npm/closure-compiler-brunch.png?mini=true)](https://nodei.co/npm/closure-compiler-brunch/)

## Usage
Install the plugin via npm with:
```
npm install --save closure-compiler-brunch
```

**Important**: ES6 required. `node <= 4.X.X` not supported without `harmony` flag. See [node green](http://node.green/). 

The optimizations are applied in production builds by default. You can supply `-p` flag with your build command. 

Closure Compiler flags can be passed to the `compiler` via `config.plugins.closurecompiler` object, for example, the default flags are given below:

```coffeescript
config =
  plugins:
    closurecompiler:
      compilationLevel: 'SIMPLE'
      createSourceMap: yes
```

`compilationLevel` can either be `WHITESPACE_ONLY`, `SIMPLE`, or `ADVANCED`. 

- [on npm](https://www.npmjs.com/package/closure-compiler-brunch)
- [on github](https://github.com/prashnts/closure-compiler-brunch)

## License

The MIT License (MIT)
