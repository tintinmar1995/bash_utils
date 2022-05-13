# Network
alias vpn='protonvpn-cli'
alias scan-network='arp -a'
alias scan-wifi='nmcli dev wifi'
alias whatsmyip='curl ifconfig.me && echo'
curl-json () {
  curl -s $1 | python -m json.tool
}

# SSH
ssh-tunnel () {
  # Usage HOST PORTS...
  cmd=$1;
  for PORT in $(seq -s ' ' 2 $#); do
    cmd=$cmd" -L ${!PORT}:localhost:${!PORT}";
  done
  ssh $cmd;
}
