alias jpyn='jupyter-notebook'

jpyn-start (){
  jpyn --no-browser --port $1 --notebook-dir=$HOME --log-level WARN & 
}

jpyn-reset (){
  jpyn stop $1
  jpyn-start $1
}

jpyn-ensure (){
if [ "$(jpyn list | grep $1 | wc -l)" -ne "1" ]; then jpyn-start $1; else echo $(jpyn list | grep $1); fi
}
