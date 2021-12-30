function py-pkg-v {
  cat $(find */_version.py) | sed 's/__version__ = //g' | sed 's/"//g'
}

function py-pkg-up {
  if (( $# != 1 )); then
    >&2 echo "Usage : py_pkg_up '0.1.1'"
  else
    echo '__version__ = "'$1'"' > $(find */_version.py)
  fi  
}

alias py-lint-whitespace="sed -i 's/[[:blank:]]*$//'"
alias py-update-requirements="python update-requirements.py"
alias py-upgrade-requirements="python upgrade-requirements.py"
