#!/bin/bash

alias gti="git"
alias git-rename-author="bash $DIR/src/git/git_rename_author.sh"
alias git-add-aliases="bash $DIR/src/git/git_add_aliases.sh"
alias git-cflc="grep -rn '<<<<<' *"
export commit_template_ds="$DIR/src/git/gitcommitmsg-ds.txt"
