alias py-pkg-v='cat $(find */_version.py)'

py-pkg-up() {
  if (( $# != 1 )); then
    >&2 echo "Usage : py_pkg_up '0.1.1'"
  else
    echo '__version__ = "'$1'"' > $(find */_version.py)
  fi  
}
