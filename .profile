export BROWSER=open
export EDITOR=vim
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export PATH=bin:$HOME/.rbenv/bin:/usr/local/bin:/usr/local/sbin:$PATH

# git
eval "$(hub alias -s)" # Git ♥ 's GitHub
[[ $- == *i* ]]  &&  . ~/.dotfiles/git-prompt.sh && source ~/.dotfiles/git-completion.bash

# rvm
[[ -s ".rvm/scripts/rvm" ]] && source ".rvm/scripts/rvm" && chmod +x $rvm_path/hooks/after_cd_bundler

# rbenv
eval "$(rbenv init -)"
