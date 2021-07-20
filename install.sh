DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo source $DIR/bash_aliases >> ~/.bash_aliases
echo source $DIR/bashrc >> ~/.bashrc
source ~/.bashrc
update-aliases
git-add-aliases
git-add-aliases
