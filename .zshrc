#############################
#                           #
# BEGINNING OF CUSTOM SETUP #
#                           #
#############################

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'

export PATH=/Users/yuvalgnessin/bin:$PATH

# alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
alias sl="subl"

# Lots of handy aliases
alias ..="cd .."
alias ...="cd ../.."
alias master="git checkout master"
alias main="git checkout main"
alias gc="git commit --verbose"
alias gcnv="git commit --no-verify"
alias gpnv="git push --no-verify"
alias gca="gc --amend"
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
alias ktlint="./gradlew lintKotlin"
alias ktlintFormat="./gradlew formatKotlin"
alias ktlint format="./gradlew formatKotlin"

git_exclude() {
  echo $1 >> .git/info/exclude
}

# set up sublime as default editor
export EDITOR=/usr/bin/subl
export VISUAL=/usr/bin/subl

# set up android home
export ANDROID_HOME="/Users/yuvalgnessin/Library/Android/sdk"
export ANDROID_SDK_ROOT="/Users/yuvalgnessin/Library/Android/sdk"

# Set up Android ADB and other platform tools
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Set up apksigner, aapt, and other android build tools on command line
# TODO: will need to update this to latest version every now and then
export PATH=${PATH}:$ANDROID_HOME/build-tools/30.0.0

# enable easy switching of jdks
# https://github.com/AdoptOpenJDK/homebrew-openjdk
jdk() {
  	version=$1
    export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
    java -version
}

# Set JDK 21 to be the default
export JAVA_HOME=$(/usr/libexec/java_home -v 21)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/yuvalgnessin/.sdkman"
[[ -s "/Users/yuvalgnessin/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/yuvalgnessin/.sdkman/bin/sdkman-init.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
