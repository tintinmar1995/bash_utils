DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source $DIR/../bash_utils_private/bash_aliases

alias update-aliases='source ~/.bash_aliases'
alias git_rename_author="bash $(pwd)/git_rename_author.sh"

# Dev
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


# IP and VPN
alias vpn='sudo protonvpn'
alias scan_local='arp -a'
alias whatsmyip='curl ifconfig.me && echo'
