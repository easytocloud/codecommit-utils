#compdef ccclone

_ccclone() {
    local -a repos
    repos=(${(f)"$(cclist)"})
    _describe 'repositories' repos
}

_ccclone "$@"