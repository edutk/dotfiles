parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\n[\w]\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \n$ "

alias ls='ls -G'
alias ll='ls -ll'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
