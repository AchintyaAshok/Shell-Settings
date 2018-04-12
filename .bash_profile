# Welcome Prompt
echo -e "\n\nWelcome, Achintya. Preparing a new session...\n\n"

# Startup Configuration
## Configure the color scheme for terminal output (color ls)
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Custom Colors (for ease of use)

BLACK="0;30m"
DARKGRAY="1;30m"
BLUE="0;34m"
LIGHTBLUE="1;34m"
GREEN="0;32m"
LIGHTGREEN="1;32m"
CYAN="\e[0;36m"
LIGHTCYAN="1;36m"
RED="0;31m"
LIGHTRED="1;31m"
PURPLE="0;35m"
LIGHTPURPLE="1;35m"
BROWN="0;33m"
YELLOW="1;33m"
LIGHTGRAY="0;37m"    
WHITE="1;37m"
RC="\]\e[0m\]" # Reset color

_BLACK="\e[0;30m"
_DaGRAY="\e[1;30m"
_BLUE="\e[0;34m"
_LiBLUE="\e[1;34m"
_GREEN="\e[0;32m"
_LiGREEN="\e[1;32m"
_CYAN="\e[0;36m"
_LiCYAN="\e[1;36m"
_RED="\e[0;31m"
_LiRED="\e[1;31m"
_PURPLE="\e[0;35m"
_LiPURPLE="\e[1;35m"
_BROWN="\e[0;33m"
_YELLOW="\e[1;33m"
_LiGRAY="\e[0;37m"    
_WHITE="\e[1;37m"


# Bash Prompt Configuration
export PS1="[$_LiGREEN\w$RC]\n$_YELLOW\u$RC$_WHITE@$RC$_LiPurple\h$RC $_WHITE$>$RC"

# Custom Aliases
alias ll="ls -lart"
alias dockerkill='pkill -f docker-compose;docker kill $(docker ps -q)'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
