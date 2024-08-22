# codecommit-utils

![release workflow](https://github.com/easytocloud/codecommit-utils/actions/workflows/release.yml/badge.svg)

A collection of command-line utilities to simplify working with AWS CodeCommit repositories.

## Introduction

`codecommit-utils` is a set of tools designed to streamline your interaction with AWS CodeCommit from the command line. Instead of using lengthy `aws codecommit` commands, you can use these simplified utilities to manage your CodeCommit repositories more efficiently.

## Features

This package provides the following utilities:

- `cclist`: List all AWS CodeCommit repositories in your account.
- `ccclone`: Clone a specific AWS CodeCommit repository.
- `ccinit`: Initialize a new AWS CodeCommit repository with a dummy README.md file.

## Installation

You can easily install `codecommit-utils` using Homebrew:

```bash
brew install easytocloud/tap/codecommit-utils
```

## Usage

### cclist

List all AWS CodeCommit repositories in your account:

```bash
cclist
```

### ccclone

Clone a specific AWS CodeCommit repository:

```bash
ccclone repository-name
```

### ccinit

Initialize a new AWS CodeCommit repository with a dummy README.md:

```bash
ccinit repository-name
```

## Zsh Integration

When using Zsh, these tools come with completion functions for an enhanced command-line experience. This is particularly useful with `ccclone`, which can provide a list of all repositories for the current AWS profile.

To enable Zsh completions, make sure your Zsh configuration loads the completion functions provided by this package.

## Contributing

Contributions to `codecommit-utils` are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any problems or have any questions, please open an issue on the [GitHub repository](https://github.com/easytocloud/codecommit-utils/issues).

---

Developed with ❤️ by [easytocloud](https://github.com/easytocloud)