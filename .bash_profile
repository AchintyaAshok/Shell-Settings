##### WELCOME #####
echo -e "\n-- Welcome, Achintya. Setting Up Your Shell. -- \n\n"

##### ENVIRONMENT SETUP #####
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

##### SHELL SETTINGS #####
export HISTSIZE=10000
export HISTFILESIZE=

##### BASH PROMPT CONFIGURATION #####
# Git branch
CURRENT_BRANCH="$(git branch 2>/dev/null | grep ^* | awk '{print $2}')"
current_branch() {
    git branch > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "$(git branch 2>/dev/null | grep ^* | awk '{print $2}')"
    fi
}

# Set Terminal Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Custom Colors (for ease of use)
RC="\[\e[0m\]" # Reset color
_BLACK="\[\e[0;30m\]"
_DaGRAY="\[\e[1;30m\]"
_BLUE="\[\e[0;34m\]"
_LiBLUE="\[\e[1;34m\]"
_GREEN="\[\e[0;32m\]"
_LiGREEN="\[\e[1;32m\]"
_CYAN="\[\e[0;36m\]"
_LiCYAN="\[\e[1;36m\]"
_RED="\[\e[0;31m\]"
_LiRED="\[\e[1;31m\]"
_PURPLE="\[\e[0;35m\]"
_LiPURPLE="\[\e[1;35m\]"
_BROWN="\[\e[0;33m\]"
_YELLOW="\[\e[1;33m\]"
_LiGRAY="\[\e[0;37m\]"
_WHITE="\[\e[1;37m\]"

# Bash Prompt Configuration
prompt_configuration="[$_LiGREEN\w$RC]\n$_LiCYAN(\$(current_branch))$RC\n$_YELLOW\u$RC$_WHITE@$RC$_LiPURPLE\h$_WHITE$>$RC "
echo "Bash Prompt Configuration => $prompt_configuration"
export PS1=$prompt_configuration

##### DOCKER STUFF #####
alias dockerkill='pkill -f docker-compose;docker kill $(docker ps -q)'
alias dockerprune='docker system prune -a'

##### CUSTOM ALIASES #####
alias reload="source ~/.bash_profile"
alias ll='ls -laG'
alias home='cd "/Users/achintyaashok"'
alias startPostgres='postgres -D /usr/local/var/postgres'
alias gotoProj='cd ~/Documents/MyProjects/'

##### AWS ALIASES #####
alias ecrlogin_us_east_1="aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <account_id>.dkr.ecr.us-east-1.amazonaws.com"
alias ecrlogin_eu_central_1="aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin <account_id>.dkr.ecr.eu-central-1.amazonaws.com"
alias ecrlogin="ecrlogin_us_east_1 && ecrlogin_eu_central_1"

export PATH
