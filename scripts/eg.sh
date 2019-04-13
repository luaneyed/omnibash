if hash exa 2>/dev/null; then
    e -alh --git --git-ignore "$@"
else
    echo >&2 "-omnibash: exa is required for this command"
fi
