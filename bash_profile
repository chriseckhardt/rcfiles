# eckhardt's ~/.bash_profile
if [ -f /etc/bashrc ]; then
  source /etc/bashrc
fi

if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

# zomg colors
DEFAULT="\e[39m"
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
LIGHT_GRAY="\e[37m"
DARK_GRAY="\e[90m"
PINK="\e[91m"
LIGHT_GREEN="\e[92m"
LIGHT_YELLOW="\e[93m"
LIGHT_BLUE="\e[94m"
LIGHT_MAGENTA="\e[95m"
LIGHT_CYAN="\e[96m"
WHITE="\e[97m"

# http://git-prompt.sh/
source ~/.git-prompt.sh

# Make the prompt purty
export PS1="\[$GREEN\t $RED\u$WHITE@$CYAN\h$WHITE:$LIGHT_GRAY\w$MAGENTA\$(__git_ps1) $DEFAULT\$ \]"

#export HOMEBREW_GITHUB_API_TOKEN=REDACTED
export GOPATH=$HOME/gocode
export PATH=$HOME/bin:$PATH:$GOPATH/bin
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
# To use a different version of Java:
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
export JAVA_HOME=$(/usr/libexec/java_home)

# Aliases
alias ll="ls -lG"
alias l="ls -lG"
alias be="bundle exec"
alias beer="bundle exec ruby"

# This needs to be the last line
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

