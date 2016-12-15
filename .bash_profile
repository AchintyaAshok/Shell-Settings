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
CYAN="0;36m"
LIGHTCYAN="1;36m"
RED="0;31m"
LIGHTRED="1;31m"
PURPLE="0;35m"
LIGHTPURPLE="1;35m"
BROWN="0;33m"
YELLOW="1;33m"
LIGHTGRAY="0;37m"    
WHITE="1;37m"

# Bash Prompt Configuration
export PS1="\n\[[\e[$LIGHTCYAN\]\w\[\e[m\]]\n\[\e[$RED\]\u\[\e[m\]@\h $>"

# Custom Aliases
alias ll="ls -lart"
