## [0.7.2](https://github.com/easytocloud/codecommit-utils/compare/v0.7.1...v0.7.2) (2026-07-17)


### Bug Fixes

* **ci:** only push to the tap when a release was published ([c6a0a52](https://github.com/easytocloud/codecommit-utils/commit/c6a0a52943f0fe370e37839287cff13c616dad06)), closes [#1](https://github.com/easytocloud/codecommit-utils/issues/1) [#4](https://github.com/easytocloud/codecommit-utils/issues/4)

## [0.7.1](https://github.com/easytocloud/codecommit-utils/compare/v0.7.0...v0.7.1) (2026-07-17)


### Bug Fixes

* handle --help in cch pr checkout and pr view ([0f2fee2](https://github.com/easytocloud/codecommit-utils/commit/0f2fee2cdd8014961830046d8e4fcc20d5ab0a7a))

# [0.7.0](https://github.com/easytocloud/codecommit-utils/compare/v0.6.6...v0.7.0) (2026-07-17)


### Bug Fixes

* correct 1Password action usage for v2 (remove /configure path) ([d76ee97](https://github.com/easytocloud/codecommit-utils/commit/d76ee9723a7374180d473d0b426c78c0905063a7))
* correct two action pins that do not exist ([099435e](https://github.com/easytocloud/codecommit-utils/commit/099435e53aee88ba1aac34d06eab32fdffa10c54))
* stop the weekly Dependabot run from failing ([d5b28ed](https://github.com/easytocloud/codecommit-utils/commit/d5b28ed3d7069eff89df90914c327f4755968ba7))
* use correct SHA for 1Password action v3.0.0 ([36dc4f4](https://github.com/easytocloud/codecommit-utils/commit/36dc4f47c9e6a0ff250c1942d88ab0298b80ce55))


### Features

* add cch pr commands for pull requests ([01f2aed](https://github.com/easytocloud/codecommit-utils/commit/01f2aed01822bb1ad0c9f8c5191f2492654a93eb))
* add cch, a gh-style CLI for CodeCommit ([fe2e4b2](https://github.com/easytocloud/codecommit-utils/commit/fe2e4b2644465f1d17904a2ff9dfe418566ecb93))

## [0.6.6](https://github.com/easytocloud/codecommit-utils/compare/v0.6.5...v0.6.6) (2024-08-22)


### Bug Fixes

* added completion functions to release.yml ([f8dbd05](https://github.com/easytocloud/codecommit-utils/commit/f8dbd052d2af28b271f777239befb8ef2fbe9842))

## [0.6.5](https://github.com/easytocloud/codecommit-utils/compare/v0.6.4...v0.6.5) (2024-08-22)


### Bug Fixes

* changed repo-name in CHANGELOG ([3162867](https://github.com/easytocloud/codecommit-utils/commit/31628673d4ab13c1222a25805a7b07dfdbe28448))

## [0.6.4](https://github.com/easytocloud/codecommit-utils/compare/v0.6.3...v0.6.4) (2024-08-22)


### Bug Fixes

* fixed bug in retrieving repo description ([49b7772](https://github.com/easytocloud/codecommit-utils/commit/49b77727e332a2f95a73187b7fecf6c13bb7577d))

## [0.6.3](https://github.com/easytocloud/codecommit-utils/compare/v0.6.2...v0.6.3) (2024-08-22)


### Bug Fixes

* removed debug output from completion function ([fab40f7](https://github.com/easytocloud/codecommit-utils/commit/fab40f7e3ff733d1d6692136057dd870a2b8549b))

## [0.6.2](https://github.com/easytocloud/codecommit-utils/compare/v0.6.1...v0.6.2) (2024-08-22)


### Bug Fixes

* fix for ccclone autocomplete ([7a2093e](https://github.com/easytocloud/codecommit-utils/commit/7a2093ee0d44b5f5fb5a7a3751590073f8f7aa44))

## [0.6.1](https://github.com/easytocloud/codecommit-utils/compare/v0.6.0...v0.6.1) (2024-08-22)


### Bug Fixes

* added completion for ccclone ([677aa90](https://github.com/easytocloud/codecommit-utils/commit/677aa90b5f8234d726e66fe5bf3dd5c1fb675ffd))

# [0.6.0](https://github.com/easytocloud/codecommit-utils/compare/v0.5.1...v0.6.0) (2024-08-22)


### Features

* added completion for ccclone ([b0f4ffe](https://github.com/easytocloud/codecommit-utils/commit/b0f4ffe57b1e979e37e9f4277a212b9dab6f29b2))

## [0.5.1](https://github.com/easytocloud/codecommit-utils/compare/v0.5.0...v0.5.1) (2024-08-17)


### Bug Fixes

* do not create REPOS.md when no repositories exist in the account/region ([ea026cd](https://github.com/easytocloud/codecommit-utils/commit/ea026cda238f9f0f8990e5c815b4d28966611493))

# [0.5.0](https://github.com/easytocloud/codecommit-utils/compare/v0.4.2...v0.5.0) (2024-08-17)


### Features

* added --create-repos-md option ([446fc3b](https://github.com/easytocloud/codecommit-utils/commit/446fc3b8764732c76156134f417236708ed978e0))

## [0.4.2](https://github.com/easytocloud/codecommit-utils/compare/v0.4.1...v0.4.2) (2024-08-01)


### Bug Fixes

* only publish on push to main ([d1fd0f2](https://github.com/easytocloud/codecommit-utils/commit/d1fd0f22c3761f16d86da844fef8b1135113b80b))

## [0.4.1](https://github.com/easytocloud/codecommit-utils/compare/v0.4.0...v0.4.1) (2024-07-29)


### Bug Fixes

* added parameter check for ccclone ([d5c8bb5](https://github.com/easytocloud/codecommit-utils/commit/d5c8bb5264cfbba883e80457aeb410353bfaeb1b))
* removed release tool from workflow ([ec479b8](https://github.com/easytocloud/codecommit-utils/commit/ec479b8c28e202ec419ffe8bf6eed39fe92b7355))

# [0.4.0](https://github.com/easytocloud/codecommit-utils/compare/v0.3.1...v0.4.0) (2024-07-29)


### Bug Fixes

* removed release tool, now builtin in workflow ([814302e](https://github.com/easytocloud/codecommit-utils/commit/814302ee5aba270cc5e8ffcd8b1c1ed99baf53c1))


### Features

* removed release tool, now builtin in workflow ([78835f6](https://github.com/easytocloud/codecommit-utils/commit/78835f62e72b39e3b716172a480f19bed66a68cd))
