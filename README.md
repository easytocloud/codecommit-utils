# codecommit-utils

![release workflow](https://github.com/easytocloud/codecommit-utils/actions/workflows/release.yml/badge.svg)

Brings `gh`-style shorthand to AWS CodeCommit repositories and pull requests.

```bash
brew install easytocloud/tap/codecommit-utils
```

```bash
cch repo list                    # instead of aws codecommit list-repositories --query ...
cch pr create --title "Fix it"   # instead of aws codecommit create-pull-request --targets ...
cch pr merge 7                   # instead of aws codecommit merge-pull-request-by-squash ...
```

## Introduction

`codecommit-utils` is a set of tools designed to streamline your interaction with AWS CodeCommit from the command line. Instead of using lengthy `aws codecommit` commands, you can use these simplified utilities to manage your CodeCommit repositories more efficiently.

## Features

This package provides the following utilities:

- `cch`: A `gh`-style command for AWS CodeCommit, covering repositories and pull requests. This is the recommended entry point.
- `cclist`: List all AWS CodeCommit repositories in your account.
- `ccclone`: Clone a specific AWS CodeCommit repository.
- `ccinit`: Initialize a new AWS CodeCommit repository with a dummy README.md file.

`cclist`, `ccclone` and `ccinit` remain fully supported and behave exactly as before. They are now thin wrappers around `cch`, which holds the actual implementation.

## Installation

Install `codecommit-utils` using Homebrew:

```bash
brew install easytocloud/tap/codecommit-utils
```

That single command taps `easytocloud/tap` and installs in one step. To tap first and browse what else the tap offers:

```bash
brew tap easytocloud/tap
brew search easytocloud/tap
brew install codecommit-utils
```

Once the tap is installed, `brew search codecommit` finds this formula too. Upgrade with `brew upgrade codecommit-utils`, and check what you are running with `cch --version`.

Man pages ship with the formula, so `man cch` works once installed — along with `man cclist`, `man ccclone` and `man ccinit`. The man pages are the full reference; this README is the tour.

These tools call the AWS CLI, so they use whatever credentials and region your current profile provides. Set `AWS_PROFILE` and `AWS_REGION` as usual.

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

`cch` also works with pull requests. Inside a cloned CodeCommit repository the repository is inferred from the `origin` remote, so no repository name is needed:

```bash
cch pr list                      # list open pull requests
cch pr list --state merged       # open, closed, merged or all
cch pr view 7                    # show pull request details
cch pr checkout 7                # fetch and check out the source branch
cch pr create --title "Fix it"   # source is the current branch, destination the default branch
cch pr create --fill             # title and body taken from the commits
cch pr merge 7                   # merge by squash, after confirmation
cch pr close 7                   # close without merging, after confirmation
```

`cch pr create` pushes the current branch to `origin` before opening the pull request, so a branch that only exists locally does not have to be pushed by hand — pass `--no-push` to skip that. It refuses to run from the default branch, and refuses to run with uncommitted changes in the working tree, since only committed work can end up in the pull request; `--force` overrides the latter. If a pull request is already open for the branch, `cch` prints it instead of creating a duplicate. Use `--fill` to take the title from the last commit subject and the body from the commit log, in place of `--title` and `--body`.

Pass `--repo <name>` to any `pr` subcommand to select a repository explicitly, for example when working outside a clone.

`cch pr merge` and `cch pr close` both prompt for confirmation, and refuse to run non-interactively unless `--yes` is passed. Use `--squash` (the default), `--fast-forward` or `--three-way` to choose a merge strategy. `cch pr close --delete-branch` deletes the source branch after closing.

Note that CodeCommit only tracks pull requests as `OPEN` or `CLOSED`, and a closed pull request cannot be reopened. `cch` reports a closed and merged pull request as `MERGED`, which it derives from the pull request's merge metadata, so `cch pr list` distinguishes a merged pull request from one that was closed without merging.

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