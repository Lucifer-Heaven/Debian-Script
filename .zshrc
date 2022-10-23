# todo when conf file grows bigger. should use self defined script/alias/etc. for diff env
#
# load self defined script
# fpath=(~/.zsh/completion $fpath)
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
##########################################
case `uname` in
  Darwin)
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

HIST_STAMPS="mm/dd/yyyy"
export HISTSIZE=1000 # history in mem from file
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS #ignore duplice
# ignore wrong cmd to history
# https://superuser.com/a/902508
zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }

plugins=(
	git
	zsh-syntax-highlighting
	osx
	docker
	docker-compose
	zsh-autosuggestions
	sudo
	vscode
	z
	ssh-agent
## iterm plug-in
# https://iterm2.com/documentation-shell-integration.html
	iterm2_shell_integration
# extract: not installed yet
	)

# come with ssh-agent plugin
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
# zstyle :omz:plugins:ssh-agent identities 2022AugDataPiGGogs FG-Leon-GitHub Lucifer-Heaven-GitHub nas
# zstyle :omz:plugins:ssh-agent quiet yes

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# For a full list of active aliases, run `alias`.
alias lac="colorls -lA --sd"
alias rm=trash
alias ssha="eval '$(ssh-agent -s)' && ssh-add -A"
alias vim="mvim -v"
alias vi=vim
alias hist="history -100"
alias gcc='gcc-12'
alias venv='python3 -m venv venv'
alias active='source venv/bin/activate && which python3'
alias aria='aria2c'

setopt no_nomatch #可在程序里继续匹配
setopt SHARE_HISTORY #TTY 共享 history
setopt nonomatch

# >>>>>>>>>>>> mujo >>>>>>>>>>
export PATH="/usr/local/opt/texinfo/bin:$PATH"
export LD_LIBRARY_PATH=MK/Users/cd/.mujoco/mujoco200_macos/bin
export PATH="$LD_LIBRARY_PATH:$PATH"
# <<<<<<<<<<<<<<<<<<<

########
#prompt_context (){} # hide cli location from left side
# remove user@hostname
########
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/sbin:$PATH"

# >>>>>>> ruby >>>>>>>
export PATH="/usr/local/opt/ruby/bin:$PATH"
export GEM_HOME="$HOME/.gem"
export PATH=$PATH:$(ruby -e 'puts Gem.bindir')
# For compilers to find ruby you may need to set:
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
# <<<<<<<<<<<<<<<<<

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
source ~/.gem/gems/colorls-1.4.1/lib/tab_complete.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/opt/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/opt/etc/profile.d/conda.sh" ]; then
        . "$HOME/opt/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/opt/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/opt/openjdk/bin:$PATH"
# For compilers to find openjdk you may need to set:
#  export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export PATH="/usr/local/opt/node@16/bin:$PATH"
# For compilers to find node@16 you may need to set:
#   export LDFLAGS="-L/usr/local/opt/node@16/lib"
#   export CPPFLAGS="-I/usr/local/opt/node@16/include"
# >>>>>>>>>>>>>>>>>>

# mac has no python2
alias python=/usr/local/bin/python3
# <<<<<<<<<<

# >>>> xv6 dep
#export TOOLPREFIX=x86_64-elf-
#export QEMU=qemu-system-x86_64

# ncurses << xv6 depend
# export PATH="/usr/local/opt/ncurses/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/ncurses/lib"
# export CPPFLAGS="-I/usr/local/opt/ncurses/include"
# export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"
# <<<<<<<<<<


# >>>> brew 
export HOMEBREW_NO_AUTO_UPDATE=1
  ;;
################################################
  Linux)
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"
# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=100000
HISTFILE=~/.zsh_history

plugins=(
	git
	zsh-syntax-highlighting
	docker
	docker-compose
	zsh-autosuggestions
	sudo
	vscode
	z
	# extract: not installed yet
)
source $ZSH/oh-my-zsh.sh
;;
esac
