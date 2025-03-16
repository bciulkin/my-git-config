#!/bin/bash

echo "##########################"
echo "My git config setup script"
echo "##########################"
echo ""

if command -v git &> /dev/null; then
    echo "✅ Git is installed. Version: $(git --version)"
else
    echo "❌ Git is NOT installed."
fi

if [[ "$(uname)" == "Linux" ]]; then
    echo "Running on Linux; setting aliases"

    alias ll="ls -la"
fi

git config --global user.name "Bartosz Ciulkin"
git config --global user.email "bartosz.ciulkin@gmail.com"
echo "Names config set"

git config --global alias.s 'status'
git config --global alias.new 'checkout -b'
git config --global alias.save "commit -am"
git config --global alias.undo 'reset HEAD~1 --mixed'
git config --global alias.force-lease 'push --force-with-lease'
git config --global alias.betterblame 'blame -w -C -C -C'
git config --global alias.worddiff 'diff --word-diff
echo "Aliases set"

git config --global rerere.enabled true

# UI
git config --global column.ui auto
git config --global branch.sort -comitterdate

