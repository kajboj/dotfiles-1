export JAVA_OPTS="-Xms1024M -Xmx1024M"
export JRUBY_OPTS='-J-Xms1024m -J-Xmx1024m -J-XX:+UseConcMarkSweepGC -J-XX:MaxPermSize=256m -J-Djruby.thread.pooling=true'

alias pulls='/Users/kajboj/code/dotfiles/scripts/pulls'
alias wiki='open -a Google\ Chrome https://github.com/shutl/docs/wiki/'
alias jrspec='bundle exec jruby --debug -S rspec --debugger '
alias ydoc='open -a Google\ Chrome https://github.com/kajboj/dotfiles-1'

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
