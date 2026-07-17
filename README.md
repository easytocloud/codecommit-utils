# codecommit-utils

![release workflow](https://github.com/easytocloud/codecommit-utils/actions/workflows/release.yml/badge.svg)

A collection of command-line utilities to simplify working with AWS CodeCommit repositories.

## Introduction

`codecommit-utils` is a set of tools designed to streamline your interaction with AWS CodeCommit from the command line. Instead of using lengthy `aws codecommit` commands, you can use these simplified utilities to manage your CodeCommit repositories more efficiently.

## Features

This package provides the following utilities:

- `cch`: A `gh`-style command for AWS CodeCommit. This is the recommended entry point.
- `cclist`: List all AWS CodeCommit repositories in your account.
- `ccclone`: Clone a specific AWS CodeCommit repository.
- `ccinit`: Initialize a new AWS CodeCommit repository with a dummy README.md file.

`cclist`, `ccclone` and `ccinit` remain fully supported and behave exactly as before. They are now thin wrappers around `cch`, which holds the actual implementation.

## Installation

You can easily install `codecommit-utils` using Homebrew:

```bash
brew install easytocloud/tap/codecommit-utils
```

## Usage

### cch

`cch` groups the CodeCommit operations under a single command, in the style of `gh`:

```bash
cch repo list                    # list repository names
cch repo list --md               # write a REPOS.md file with repository details
cch repo clone repository-name   # clone a repository
cch repo create repository-name  # create a repository
cch repo view repository-name    # show repository metadata
```

`cch repo create` creates an empty repository. Add `--clone` to clone it afterwards, or `--readme` to also seed a README.md, commit and push it:

```bash
cch repo create repository-name --readme
```

The equivalents of the original commands are:

| Original                    | `cch` equivalent                      |
| --------------------------- | ------------------------------------- |
| `cclist`                    | `cch repo list`                       |
| `cclist --create-repos-md`  | `cch repo list --md`                  |
| `ccclone repository-name`   | `cch repo clone repository-name`      |
| `ccinit repository-name`    | `cch repo create repository-name --readme` |

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

When using Zsh, these tools come with completion functions for an enhanced command-line experience. This is particularly useful with `ccclone` and `cch repo clone`, which can provide a list of all repositories for the current AWS profile.

To enable Zsh completions, make sure your Zsh configuration loads the completion functions provided by this package.

## Contributing

Contributions to `codecommit-utils` are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any problems or have any questions, please open an issue on the [GitHub repository](https://github.com/easytocloud/codecommit-utils/issues).

---

Developed with ❤️ by [easytocloud](https://github.com/easytocloud)