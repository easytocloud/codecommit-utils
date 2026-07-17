#!/usr/bin/env bash

# Bash completer function for cch
_cch_completer() {
    local cur cword
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    cword=${COMP_CWORD}

    # cch <command>
    if [[ ${cword} -eq 1 ]] ; then
        COMPREPLY=( $(compgen -W "repo help --help --version" -- "${cur}") )
        return 0
    fi

    # cch repo <subcommand>
    if [[ ${cword} -eq 2 && ${COMP_WORDS[1]} == "repo" ]] ; then
        COMPREPLY=( $(compgen -W "list clone create view" -- "${cur}") )
        return 0
    fi

    # cch repo <subcommand> <args>
    if [[ ${cword} -ge 3 && ${COMP_WORDS[1]} == "repo" ]] ; then
        case "${COMP_WORDS[2]}" in
            list)
                COMPREPLY=( $(compgen -W "--md --help" -- "${cur}") )
                ;;
            clone|view)
                COMPREPLY=( $(compgen -W "$(cch repo list 2>/dev/null)" -- "${cur}") )
                ;;
            create)
                if [[ ${cur} == -* ]] ; then
                    COMPREPLY=( $(compgen -W "--clone --readme" -- "${cur}") )
                fi
                ;;
        esac
        return 0
    fi
}

# Register Bash completer function
complete -F _cch_completer cch
