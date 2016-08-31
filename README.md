## closure-compiler-brunch
Adds [Closure Compiler JS](https://github.com/google/closure-compiler-js) support to [brunch](http://brunch.io).

The Closure Compiler tool can produce highly optimized JavaScript code by static analysis, dead code removal and minification.

This plugin leverages the JavaScript implementation of Closure Compiler, hence _Java is not required_.

**`Experimental`**

[![Build Status](https://travis-ci.org/prashnts/closure-compiler-brunch.svg?branch=master)](https://travis-ci.org/prashnts/closure-compiler-brunch)
[![npm](https://img.shields.io/npm/v/closure-compiler-brunch.svg)](https://www.npmjs.com/package/closure-compiler-brunch)

## Usage
Install the plugin via npm with:
```
npm install --save closure-compiler-brunch
```

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
