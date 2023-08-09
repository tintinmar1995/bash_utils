function py-pkg-v {
  cat $(find */_version.py) | sed 's/__version__ = //g' | sed 's/"//g'
}


function py-pkg-commit {
  git add $(find */_version.py) && git commit -am "DOC: Upgrade version"
}


function py-pkg-up {
  if (( $# != 1 )); then
    >&2 echo "Usage : py_pkg_up '0.1.1'"
  else
    echo '__version__ = "'$1'"' > $(find */_version.py)
  fi  
}

alias py-lint-whitespace="sed -i 's/[[:blank:]]*$//'"
alias py-parse-dependencies="python $PATH_BASH_UTILS/src/py/parse-dependencies.py"
alias py-update-requirements="python $PATH_BASH_UTILS/src/py/update-requirements.py"
alias py-upgrade-requirements="python $PATH_BASH_UTILS/src/py/upgrade-requirements.py"
