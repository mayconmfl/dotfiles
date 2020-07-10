# zshrc Configurations
# Author: Maycon Lima <maycon.mflima@gmail.com>
# Date: Jul-2020
#
#============================================================================

# >>>>>> OH-MY-ZSH Framework (managing zsh configuration) <<<<<<<

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
mvn
)


# Histfile Setup
# Type to show: history -E / history -i / history -D
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
HIST_STAMPS="%d/%m/%y %T"
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS


source $ZSH/oh-my-zsh.sh

#============================================================================

# >>>>>> ZINIT Plugin Manager <<<<<<<

### Added by Zplugin's installer
##source "$HOME/.zplugin/bin/zplugin.zsh"
##autoload -Uz _zplugin
##(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit installer's chunk

# ZPLUGINS's
zinit light chrissicool/zsh-bash
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting

#============================================================================

# >>>>>> User Configuration <<<<<<<

# Env
export LANG=en_US.UTF-8
export JAVA_HOME=$(/usr/libexec/java_home)

# Alias

# Local
alias home=~
alias mysdk=~/Dev/mysdk
alias jobsdk=~/Dev/jobsdk
alias studysdk=~/Dev/studysdk
alias labsdk=~/Dev/labsdk
alias dev=~/Dev/
alias tmp=~/Dev/Tmp

alias cls='clear'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'

# Put any proprietary or private functions/values in ~/.private, and this will source them
if [ -f $HOME/.private ]; then
  source $HOME/.private
fi

#============================================================================