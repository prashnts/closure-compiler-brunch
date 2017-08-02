# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) 
and this project adheres to [Semantic Versioning](http://semver.org/).

## [0.1.6] - 2017-08-02
### Changed
- Upgrade closure copiler to the latest version.

Note: v0.1.5 was yanked.


## [0.1.4] - 2017-04-16
### Added
- `yarn` lockfile.

### Changed
- Added `node@v5` as a build target.
- Test coverage.
- Update `closure-compiler` version.

## Fixed
- `mocha.opts` did not have `istanbul` registered, hence coverage was not reported.


## [0.1.3] - 2016-09-17
### Changed
- Build timeouts increased to 35s from 15s in tests.
- Updated tests since the latest closure compiler produces slightly different sourcemaps.

### Fixed
- Fixed Syntax error raised from Google Closure Compiler via google/closure-compiler-js@91f5391
- Minor formatting issues and typos with README.
- Changelog links.


## [0.1.2] - 2016-08-29
### Fixed
- Bugfixes, test updates by @shvaikalesh in #1.
- Typo in the `README.md`.

### Added
- Added @shvaikalesh in `package.json` contributors.


## [0.1.1] - 2016-08-29
### Changed
- `npm` release version.


## [0.1.0] - 2016-08-28
### Added
- Plugin configuration, optimizations.
- Changelog.
- Readme content.


## 0.0.1 - 2016-08-28
### Added
- Initial Commit.
- Basic implementation and tests.



[0.1.6]: https://github.com/prashnts/closure-compiler-brunch/compare/0.1.6...0.1.6
[0.1.4]: https://github.com/prashnts/closure-compiler-brunch/compare/0.1.3...0.1.4
[0.1.3]: https://github.com/prashnts/closure-compiler-brunch/compare/0.1.2...0.1.3
[0.1.2]: https://github.com/prashnts/closure-compiler-brunch/compare/0.1.1...0.1.2
[0.1.1]: https://github.com/prashnts/closure-compiler-brunch/compare/0.1.0...0.1.1
[0.1.0]: https://github.com/prashnts/closure-compiler-brunch/compare/0.0.1...0.1.0
