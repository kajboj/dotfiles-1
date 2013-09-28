export JAVA_OPTS="-Xms1024M -Xmx1024M"
export JRUBY_OPTS='-J-Xms1024m -J-Xmx1024m -J-XX:+UseConcMarkSweepGC -J-XX:MaxPermSize=256m -J-Djruby.thread.pooling=true'
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

alias pulls='/Users/kajboj/code/dotfiles/scripts/pulls'
alias wiki='open -a Google\ Chrome https://github.com/shutl/docs/wiki/DevOps'
alias jrspec='bundle exec jruby --debug -S rspec --debugger '
alias ydoc='open -a Google\ Chrome https://github.com/kajboj/dotfiles-1'
alias build='open -a Google\ Chrome http://50.17.204.179'

alias gs='git status'
alias gd='git diff --ignore-space-change '
alias gl='git log '
alias glp='git log -p'
alias ga='git add '
alias gdc='git diff --cached'
alias gc='git commit -v -m '
alias gpo='git push origin '

alias be='bundle exec'
alias bi='bundle install'
alias soz='source ~/.zsh.after/aliases_and_stuff.zsh'

set -o emacs

function current_repository() {
ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
echo $(git remote -v | cut -d':' -f 2)
}

function current_branch() {
ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
echo ${ref#refs/heads/}
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git
alias ggpush='git push origin $(current_branch)'
compdef ggpush=git
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
compdef ggpnp=git

alias exit='echo "use Ctrl+D instead"'

alias stag='ruby ~/code/iterm/exec.rb stag'
alias sand='ruby ~/code/iterm/exec.rb sand'
alias prod='ruby ~/code/iterm/exec.rb prod'
alias prod_us='ruby ~/code/iterm/exec.rb prod_us'

alias ttr='touch tmp/restart.txt'
alias tpr='touch ~/.pow/restart.txt'
