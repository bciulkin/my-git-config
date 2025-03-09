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

git config --global user.name "Bartosz Ciulkin"
git config --global user.email "bartosz.ciulkin@gmail.com"

git config --global alias.s 'status'
git config --global alias.new 'checkout -b'
git config --global alias.save "!git add -A && git commit -m 'chore: savepoint'"
git config --global alias.undo 'reset HEAD~1 --mixed'
