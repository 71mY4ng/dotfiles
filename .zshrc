# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM="xterm-256color" 
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
plugins=(
  git sudo zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

ZSH_THEME='powerlevel9k/powerlevel9k'
. ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme

DEFAULT_USER=DEFAULT
#POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context root_indicator dir dir_writable_joined)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time
                                    vcs background_jobs_joined time_joined)
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="red"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="white"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="cyan"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='magenta'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='clear'
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='green'

export PATH=~/.local/bin:/usr/java/jdk1.8.0_171/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export DISPLAY=localhost:0.0
export http_proxy=127.0.0.1:7890
export https_proxy=127.0.0.1:7890


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


## windows env setting

# alias wingit="/mnt/c/Program\\ Files/Git/cmd/git.exe"
# alias git=wingit
# 
# function cdwin(){
#     line=${1/C://mnt/c}
#     line=${line//\\//}
#     cd "$line"
# }
