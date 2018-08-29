#!/bin/bash -ex

ln -fs ~/.dotfiles/.agignore ~/.agignore
ln -fs ~/.dotfiles/.gemrc ~/.gemrc
ln -fs ~/.dotfiles/.git_commit_template ~/.git_commit_template
ln -fs ~/.dotfiles/.git_templates ~/.git_templates
ln -fs ~/.dotfiles/.hushlogin ~/.hushlogin
ln -fs ~/.dotfiles/.iex.exs ~/.iex.exs
ln -fs ~/.dotfiles/.irbrc ~/.irbrc
ln -fs ~/.dotfiles/.profile ~/.profile
ln -fs ~/.dotfiles/.rdebugrc ~/.rdebugrc
ln -fs ~/.dotfiles/.slate ~/.slate
ln -fs ~/.dotfiles/.spacemacs ~/.spacemacs
ln -fs ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -fs ~/.dotfiles/.vimrc ~/.vimrc
ln -fs ~/.dotfiles/gitignore ~/.gitignore

ln -fs ~/Dropbox/Notes ~/Notes

mkdir -p ~/Code

# git
git config --global alias.amend 'commit --amend --reuse-message HEAD'
git config --global alias.changed 'diff --name-only origin/master..HEAD'
git config --global alias.changelog 'log --no-merges --pretty=format:"%s (%an)"'
git config --global alias.contributors 'shortlog --summary --email --numbered'
git config --global alias.git '!exec git'
git config --global alias.graph 'log --all --date=relative --decorate --graph --oneline'
git config --global alias.ignore '!gitignoreio() { curl https://www.gitignore.io/api/$@ ;}; gitignoreio'
git config --global alias.lastweek 'log --all --no-merges --oneline --since "8 days ago" --author justincampbell'
git config --global alias.pull-request 'pull-request --browse'
git config --global alias.track '!track() { git branch --set-upstream-to=origin/$(git rev-parse --abbrev-ref HEAD) ;}; track'
git config --global alias.yolo 'push --force --no-verify'
git config --global branch.autosetuprebase always
git config --global color.ui true
git config --global commit.gpgsign true
git config --global core.excludesfile ~/.gitignore
git config --global credential.helper osxkeychain
git config --global github.user "justincampbell"
git config --global help.autocorrect 25
git config --global init.templatedir '~/.git_templates'
git config --global pull.ff only
git config --global push.default current
git config --global rebase.autosquash true
git config --global user.email "justin@justincampbell.me"
git config --global user.name "Justin Campbell"
git config --global user.signingkey $(gpg --list-keys | grep ^pub | sed -n 's/.*\/\(.*\) .*/\1/p')
git config --global web.browser open

# vim
ln -fs ~/.vim ~/.nvim
ln -fs ~/.vimrc ~/.nvimrc
mkdir -p ~/.vim/autoload && curl -fLo ~/.vim/autoload/plug.vim \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
