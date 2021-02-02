git config --global help.autocorrect 20

git config --global alias.co checkout
git config --global alias.untrack "rm --cached"
git config --global alias.push-f "push --force-with-lease"
git config --global alias.slog "log --oneline"
git config --global alias.undo "reset --soft HEAD^"
git config --global alias.wip '!git add -A && git commit -m "Temp"'
git config --global alias.ignore "!f() { echo $1 >> .gitignore; }; f"
