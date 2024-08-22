# aws-utils
AWS utilities

Collection of easytocloud AWS utilities.

## CodeCommit

The cc* tools interact with AWS CodeCommit

- cclist: list CodeCommit repositories
- ccclone: git clone of named CodeCommit repository
- ccinit: initalize CodeCommit repository, populate with README.md and push as Initial commit.

## Installation

### Zsh Completion

To enable zsh completion for the `ccclone` command:

1. Add the following line to your `~/.zshrc` file:

   ```zsh
   fpath=(/path/to/distribution/completions $fpath)
   ```

   Replace `/path/to/` with the actual path to the aws-utils project directory.

2. Reload your zsh configuration:

   ```zsh
   source ~/.zshrc
   ```

3. Rebuild zsh's completion cache:

   ```zsh
   rm -f ~/.zcompdump; compinit
   ```

## Other utilities

Some other utilities that used to be in this repository are in their own repo now:

- akskrotate: to rotate your AK/SK
- whoiam: AWS IAM version of whoami, part of privpage
- privpage: privacy pager masking AWS account IDs and other sensitive info
