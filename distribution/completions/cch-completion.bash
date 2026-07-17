#!/usr/bin/env bash

# Bash completer function for cch
_cch_completer() {
    local cur cword
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    cword=${COMP_CWORD}

    # cch <command>
    if [[ ${cword} -eq 1 ]] ; then
        COMPREPLY=( $(compgen -W "repo pr help --help --version" -- "${cur}") )
        return 0
    fi

    # cch repo <subcommand>
    if [[ ${cword} -eq 2 && ${COMP_WORDS[1]} == "repo" ]] ; then
        COMPREPLY=( $(compgen -W "list clone create view" -- "${cur}") )
        return 0
    fi

    # cch pr <subcommand>
    if [[ ${cword} -eq 2 && ${COMP_WORDS[1]} == "pr" ]] ; then
        COMPREPLY=( $(compgen -W "list view checkout create merge close" -- "${cur}") )
        return 0
    fi

    # cch pr <subcommand> <args>
    if [[ ${cword} -ge 3 && ${COMP_WORDS[1]} == "pr" ]] ; then
        # --state takes a fixed set of values
        if [[ ${COMP_WORDS[COMP_CWORD-1]} == "--state" ]] ; then
            COMPREPLY=( $(compgen -W "open closed merged all" -- "${cur}") )
            return 0
        fi
        case "${COMP_WORDS[2]}" in
            list)
                COMPREPLY=( $(compgen -W "--state --author --limit --repo" -- "${cur}") )
                ;;
            view|checkout)
                COMPREPLY=( $(compgen -W "--repo" -- "${cur}") )
                ;;
            create)
                COMPREPLY=( $(compgen -W "--title --body --base --head --repo" -- "${cur}") )
                ;;
            merge)
                COMPREPLY=( $(compgen -W "--squash --fast-forward --three-way --yes --repo" -- "${cur}") )
                ;;
            close)
                COMPREPLY=( $(compgen -W "--delete-branch --yes --repo" -- "${cur}") )
                ;;
        esac
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
