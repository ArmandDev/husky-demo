#!/usr/bin/env sh
. "$(dirname -- "$0")/_/husky.sh"

# Verifică dacă package.json a fost modificat în ultimul pull
if git diff-tree -r --name-only --no-commit-id ORIG_HEAD HEAD | grep --quiet "package.json"; then
    echo "--- Modificări detectate în package.json. Se rulează npm install... ---"
    npm install
fi
