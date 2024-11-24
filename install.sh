# WARNING: To be sourced (source install.sh / . install.sh)
echo 
echo Installing bash_utils..
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo source $DIR/bash_aliases >> ~/.bash_aliases
echo source $DIR/bashrc >> ~/.bashrc
source ~/.bashrc
update-aliases
git-add-aliases
git-add-aliases
echo bash_utils installed !
