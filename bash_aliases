DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
alias update-aliases='source ~/.bash_aliases'
alias cheatsheet-ls='find $PATH_BASH_UTILS | grep cheatsheet'

alias htop-me='htop --user=$USER'

source "$DIR/src/fileio/main.sh"
source "$DIR/src/git/main.sh"
source "$DIR/src/network/main.sh"
source "$DIR/src/py/dev.sh"
source "$DIR/src/py/pkg.sh"
source "$DIR/src/py/jpyn.sh"
source "$DIR/src/py/pyenv.sh"
