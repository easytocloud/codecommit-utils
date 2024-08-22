#!/usr/bin/env bash

_ccclone_completions()
{
    COMPREPLY=($(compgen -W "$(cclist)" -- "${COMP_WORDS[COMP_CWORD]}"))
}

complete -F _ccclone_completions ccclone