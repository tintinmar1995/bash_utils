# CONFIG PYTHON..

## Install PyEnv
- https://github.com/pyenv/pyenv
- https://github.com/pyenv/pyenv-virtualenv
- https://github.com/pyenv/pyenv-update
- pyenv install 3.9.0
- pyenv virtualenv 3.9.0 BLABLA
- exec "$SHELL"

## JPYN & PyEnv
- python -m ipykernel install --user --name=<my_env_name>
- jupyter kernelspec list
- jupyter kernelspec uninstall <my_env_name>

## Autoreload

- %load_ext autoreload
- %autoreload 2

## Show the whole dataframe

```python
from IPython.display import display, HTML
display(HTML(df.to_html()))
```

