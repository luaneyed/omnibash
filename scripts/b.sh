if hash bat 2>/dev/null; then
    bat "$@"
else
    cat "$@"
fi
