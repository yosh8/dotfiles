stty stop undef
export CLICOLOR=1
#export PS1='\u@\w \@ \$ '
export PS1="\u@\e[0;35m\W \e[0;32m\@ \e[0m\$ "
alias ls='ls -F'
alias ll='ls -Fl'
alias la='ls -Fa'
alias lla='ls -Fla'
alias gs='git status'
alias gdi='git diff'
alias gdich='git diff --cached'
alias tmuxs='tmux new-session \; source-file ~/projects/dotfiles/tmux/startup'
alias gl='git log'
alias glns='git log --name-status'
alias gl1='git log --oneline'
alias glmine='git log --graph --name-status --pretty=format:"%C(red)%h %C(green)%an %Creset%s %C(yellow)%d%Creset"'
export HOMEBREW_GITHUB_API_TOKEN='728e294099d16b2c6578d9dd165ee4eaead37ea9'
source ~/.git-completion.bash
# if set -C, bash does not overwrite an existing file with the >, >&, and <> redirection operators.
set -C
export PATH=/usr/local/bin:$PATH;
