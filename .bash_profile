export PATH="/usr/local/bin:$PATH:$PATH/usr/local/bin:/usr/sbin:/sbin:/usr/bin:/bin:$HOME/bin:/usr/local/sbin:/usr/local/git/bin:/Users/yuval/.rvm/bin:/Users/yuval/bin"

# Add RVM to PATH for scripting

# Tell ls to be colourful
# export CLICOLOR=1

# Tell grep to highlight matches
# export GREP_OPTIONS='--color=auto'

# Resolving XMog Mac issues with coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Set up AWS CLI
export PATH="$PATH:/Users/yuvalgnessin/.local/lib/aws/bin"

# Set up Android ADB
export PATH="/Applications/android-sdk-macosx/platform-tools:$PATH"

# Set up Android ANT
export PATH="$PATH:/Applications/apache-ant-1.9.4/bin/"

# qt is needed for capybar-webkit and has issues on macOS Sierra.
# https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit#macos-sierra-1012
# export PATH=~/Qt5.5.1/5.5/clang_64/bin:$PATH

# AWS CLI auto-complete
complete -C '/usr/local/bin/aws_completer' aws

# Source this other file
# source ~/.profile

# Lots of handy aliases
alias b="bundle exec"
alias ..="cd .."
alias ...="cd ../.."
alias dev="git checkout dev"
alias stable="git checkout stable"
alias master="git checkout master"
alias xmog="cd ~/Documents/autolist/transmogrifier"
alias smog="xmog"
alias autos="cd ~/Documents/autolist/autolist"
alias grumman="cd ~/Documents/autolist/grumman"
alias android="cd ~/Documents/autolist/android"
alias gc="git commit"
alias gcnv="git commit --no-verify"
alias gca="git commit --amend"
alias wip="git add --all; gcnv -m 'WIP'; git log -1"
alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias ga="git add --all; git status"
alias gu="git unadd"
alias gl="git log"
alias gl1="git log -1"
alias gl2="git log -2"
alias gl3="git log -3"
alias grsh="git reset --soft HEAD~1"
alias deploy="bash ~/bin/deploy.sh"

git_exclude() {
  echo $1 >> .git/info/exclude
}

source ~/.git-prompt.sh

# Load git completion scripts
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# LOAD BASH RC
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# ADB auto-completion
if [ -e ~/.adb-bash-completion.bash ] ; then
  source ~/.adb-bash-completion.bash
fi

export PATH="$PATH:~/Documents/scripts/bin"

# pyenv setup
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Add ssh keys to SSH Agent, which doesn't happen on startup with macOS Sierra
# https://apple.stackexchange.com/questions/254468/macos-sierra-doesn-t-seem-to-remember-ssh-keys-between-reboots
ssh-add -K 2>/dev/null;

# http://mediadoneright.com/content/ultimate-git-ps1-bash-prompt
#
#  Customize BASH PS1 prompt to show current GIT repository and branch.
#  by Mike Stewart - http://MediaDoneRight.com
#
#  SETUP CONSTANTS
#  Bunch-o-predefined colors.  Makes reading code easier than escape sequences.
#  I don't remember where I found this.  o_O

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"

# This PS1 snippet was adopted from code for MAC/BSD I saw from: http://allancraig.net/index.php?option=com_content&view=article&id=108:ps1-export-command-for-git&catid=45:general&Itemid=96
# I tweaked it to work on UBUNTU 11.04 & 11.10 plus made it mo' better

export PS1=$IBlack$Time12h$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$IRed'"$(__git_ps1 " {%s}"); \
  fi) '$BYellow$PathShort$Color_Off'\$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Yellow$PathShort$Color_Off'\$ "; \
fi)'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
