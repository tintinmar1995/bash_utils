DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export PATH_BASH_UTILS=$DIR

source $DIR/src/workspace/ssh_username_host.sh

export VISUAL=vim
export EDITOR="$VISUAL"
