echo CONFIG WORKSPACE..
mkdir ~/dev ~/data ~/cache ~/srv

echo CONFIG GIT..
git-add-aliases
git config --global commit.template $commit_template_ds
git config --global help.autocorrect 20
ssh-keygen
