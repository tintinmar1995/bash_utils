echo CONFIG WORKSPACE..
mkdir ~/dev ~/data ~/cache ~/srv

echo CONFIG GIT..
git-add-aliases
git config --global commit.template $commit_template_ds
ssh-keygen

echo CONFIG PYTHON..
echo --> 'https://github.com/pyenv/pyenv'
echo --> 'https://github.com/pyenv/pyenv-virtualenv'
echo --> 'pyenv install 3.9.0'
echo --> 'pyenv virtualenv 3.9.0 BLABLA'
