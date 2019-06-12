if hash lsd 2>/dev/null; then
    lsd --group-dirs first --date relative "$@"
elif hash exa 2>/dev/null; then
    exa --group-directories-first "$@"
else
    ls "$@"
fi
