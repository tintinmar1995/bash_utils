DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

alias update-aliases='source ~/.bash_aliases'

# Dev
## Git
alias git_rename_author="bash $DIR/src/git/git_rename_author.sh"
alias git_add_aliases="bash $DIR/src/git/git_add_aliases.sh"
## Sanitize files
crlf2lf (){
  if (( $# != 2 )); then
    >&2 echo "Usage : crlf2lf path_in path_out"
  else
    tr -d '\r' < $1 > $2
  fi
}
## Markdown
echo_md () {
  pandoc $1 | sed 's/<code/<code style="color:cyan;"/g'|  elinks -dump -dump-color-mode 1 | sed -r 's/^/   /g;s/ *$//' | (echo && cat && echo)
}
## Python
alias jpyn='jupyter-notebook'

# SSH
ssh_tunnel () {
  ssh -L $2:localhost:$2 $1
}


# Network
alias vpn='sudo protonvpn'
alias scan_network='arp -a'
alias scan_wifi='nmcli dev wifi'
alias whatsmyip='curl ifconfig.me && echo'
