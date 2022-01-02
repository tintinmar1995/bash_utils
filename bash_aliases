DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

alias update-aliases='source ~/.bash_aliases'
alias cheatsheet-ls='find $PATH_BASH_UTILS | grep cheatsheet'

# Cozy
alias cozy-whats-new="bash $DIR/src/cozy/ls_recent.sh"

# Dev
alias htop-me='htop --user=$USER'
## Git
alias gti="git"
alias git-rename-author="bash $DIR/src/git/git_rename_author.sh"
alias git-add-aliases="bash $DIR/src/git/git_add_aliases.sh"
alias git-cflc="grep -rn '<<<<<' *"
export commit_template_ds="$DIR/src/git/gitcommitmsg-ds.txt"
## Sanitize files
crlf2lf (){
  if (( $# != 2 )); then
    >&2 echo "Usage : crlf2lf path_in path_out"
  else
    tr -d '\r' < $1 > $2
  fi
}
## Markdown
cat-md () {
  pandoc $1 | sed 's/<code/<code style="color:cyan;"/g'|  elinks -dump -dump-color-mode 1 | sed -r 's/^/   /g;s/ *$//' | (echo && cat && echo)
}
## Python
source "$DIR/src/py/dev.sh"
source "$DIR/src/py/pkg.sh"
source "$DIR/src/py/jpyn.sh"
source "$DIR/src/py/pyenv.sh"

# Network
alias vpn='protonvpn-cli'
alias scan-network='arp -a'
alias scan-wifi='nmcli dev wifi'
alias whatsmyip='curl ifconfig.me && echo'
## SSH
ssh-tunnel () {
  # Usage HOST PORTS...
  cmd=$1;
  for PORT in $(seq -s ' ' 2 $#); do
    cmd=$cmd" -L ${!PORT}:localhost:${!PORT}";
  done
  ssh $cmd;
}
