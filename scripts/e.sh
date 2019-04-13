if hash exa 2>/dev/null; then
    exa --group-directories-first "$@"
else
    ls "$@"
fi
