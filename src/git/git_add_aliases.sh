git config --global help.autocorrect 5

git config --global alias.co checkout
git config --global --remove-section alias

git config --global alias.aliases "!git config --get-regexp '^alias\.'"
git config --global alias.co checkout
git config --global alias.camend "commit --amend --no-edit"
git config --global alias.br branch
git config --global alias.st status
git config --global alias.push-f "push --force-with-lease"
git config --global alias.slog "log --oneline"
git config --global alias.wip '!git add -A && git commit -m "Wip"'
git config --global alias.ignore "! echo $1 >> .gitignore"
git config --global alias.ignored '! git ls-files --others --ignored --exclude-standard --directory && git ls-files --others -i --exclude-standard'
git config --global alias.unfollowed 'update-index --assume-unchanged'
