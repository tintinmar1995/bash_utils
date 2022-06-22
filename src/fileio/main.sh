# Sanitize files
crlf2lf (){
  if (( $# != 2 )); then
    >&2 echo "Usage : crlf2lf path_in path_out"
  else
    tr -d '\r' < $1 > $2
  fi
}

# Markdown
cat-md () {
  pandoc $1 | sed 's/<code/<code style="color:cyan;"/g'|  elinks -dump -dump-color-mode 1 | sed -r 's/^/   /g;s/ *$//' | (echo && cat && echo)
}


alias json-fmt="python -m json.tool"

