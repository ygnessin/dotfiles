
# PATH=$PATH:/usr/X11/bin # for running specs locally

# export PATH=/usr/local/bin:$PATH

# export GIT_EXEC_PATH="$(dirname $(which ruby)):$(git --exec-path)"

# source /usr/local/git/contrib/completion/git-completion.bash
# GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='[\u@mbp \w$(__git_ps1)]\$ '

# ### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

# source /Users/yuvalgnessin/railsprojects/scripts/init.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# AWS CLI auto-complete
complete -C '/usr/local/bin/aws_completer' aws

# ADB auto-completion
if [ -e /usr/local/bin/adb-bash-completion.txt ] ; then
  source /usr/local/bin/adb-bash-completion.txt
fi
