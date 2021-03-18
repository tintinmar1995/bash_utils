alias jpyn='jupyter-notebook'

jpyn-start (){
  jpyn --no-browser --port $1 --notebook-dir=$HOME --log-level WARN & 
}

jpyn-reset (){
  jpyn stop $1
  jpyn-start $1
}
