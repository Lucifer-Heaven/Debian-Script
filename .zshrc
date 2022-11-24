export ZSH="$HOME/.oh-my-zsh"
# load self defined script
# fpath=(~/.zsh/completion $fpath)
# about self defined function/script
# https://unix.stackexchange.com/questions/429169/how-to-make-custom-zsh-script-executable-automatically 
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

  plugins=(
    git
    zsh-syntax-highlighting
    macos # mac only
    docker
    docker-compose
    zsh-autosuggestions
    sudo
    vscode 
    z 
    ssh-agent
  ## iterm plug-in # mac only
  # extract: not installed yet
    fzf 
    vagrant
    )

    source $ZSH/oh-my-zsh.sh
  # come with ssh-agent plugin
  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
  # zstyle :omz:plugins:ssh-agent identities 2022AugDataPiGGogs FG-Leon-GitHub Lucifer-Heaven-GitHub nas
  # zstyle :omz:plugins:ssh-agent quiet yes



  # User configuration
  # export MANPATH="/usr/local/man:$MANPATH"

  # >>>>>>>>>>>>>>>>>>>>
  # FZF
  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf
  # https://github.com/junegunn/fzf#tips
  # need brew install fd
  #export FZF_DEFAULT_COMMAND="fd . $HOME"
  export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_BASE=/usr/local/bin/fzf
  # <<<<<<<<<<<<<<<<<<<<

  # >>>>>>>>>>>>>>>>>>>>
  # Mac config
  # only works on mac
  # Preferred editor for local and remote sessions
  if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
  else
    export OPENER='Finder'
    export EDITOR='/usr/local/bin/nvim -f' # todo
  fi

  # Compilation flags
  export ARCHFLAGS="-arch x86_64"
  alias openf='open -R'
  openz(){
    if [ -n "$1" ] ; then
      local var=$(z -e $1)
      open $var
    fi
  }
  alias rm=trash
  alias vi=nvim
  alias vim="nvim"
  alias vimc='nvim -u NONE'
  alias mvim="mvim -v"
  # <<<<<<<<<<<<<<<<<<<<


  # >>>>>>>>>>>>>>>>>>>>
  # mujo
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

  # >>>>>>>>>>>>>>>>>>>>
  # ruby
  export PATH="/usr/local/opt/ruby/bin:$PATH"
  export GEM_HOME="$HOME/.gem"
  export PATH=$PATH:$(ruby -e 'puts Gem.bindir')
  # For compilers to find ruby you may need to set:
  export LDFLAGS="-L/usr/local/opt/ruby/lib"
  export CPPFLAGS="-I/usr/local/opt/ruby/include"
  # <<<<<<<<<<<<<<<<<<<<

  unset LSCOLORS
  export CLICOLOR=1
  export CLICOLOR_FORCE=1
  source ~/.gem/gems/colorls-1.4.1/lib/tab_complete.sh

  # >>>>>>>>>>>>>>>>>>>>
  # conda initialize
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
  # <<<<<<<<<<<<<<<<<<<<

  # >>>>>>>>>>>>>>>>>>>>
  # java
  export PATH="/usr/local/opt/openjdk/bin:$PATH"
  # For compilers to find openjdk you may need to set:
  #  export CPPFLAGS="-I/usr/local/opt/openjdk/include"
  export PATH="/usr/local/opt/node@16/bin:$PATH"
  # For compilers to find node@16 you may need to set:
  #   export LDFLAGS="-L/usr/local/opt/node@16/lib"
  #   export CPPFLAGS="-I/usr/local/opt/node@16/include"
  # >>>>>>>>>>>>>>>>>>

  # >>>> xv6 dep
  #export TOOLPREFIX=x86_64-elf-
  #export QEMU=qemu-system-x86_64

  # ncurses << xv6 depend
  # export PATH="/usr/local/opt/ncurses/bin:$PATH"
  # export LDFLAGS="-L/usr/local/opt/ncurses/lib"
  # export CPPFLAGS="-I/usr/local/opt/ncurses/include"
  # export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"
  # <<<<<<<<<<


  # >>>>>>>>>>>>>>>>>>>>
  # misc
  # brew 
  export HOMEBREW_NO_AUTO_UPDATE=1
  # crontab
  # https://apple.stackexchange.com/a/449622
  # see comments
  export VISUAL=nvim
  # mac has no python2
  alias python=/usr/local/bin/python3

  # <<<<<<<<<<<<<<<<<<<<

  # >>>>>>>>>>>>>>>>>>>>
  # vi-mode setting
  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vi-mode
  # https://gist.github.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52
  # cursor in iTerm2 can't change
  # https://iterm2.com/documentation-escape-codes.html
  #VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
  #VI_MODE_SET_CURSOR=true
  #export KEYTIMEOUT=1
  ## MODE_INDICATOR="%F{white}+%f"
  ## INSERT_MODE_INDICATOR="%F{yellow}+%f"
  #bindkey -v
  #function zle-keymap-select {
  #  if [[ ${KEYMAP} == vicmd ]] ||
  #     [[ $1 = 'block' ]]; then
  #    echo -ne '\e[1 q'
  #  elif [[ ${KEYMAP} == main ]] ||
  #       [[ ${KEYMAP} == viins ]] ||
  #       [[ ${KEYMAP} = '' ]] ||
  #       [[ $1 = 'beam' ]]; then
  #    echo -ne '\e[5 q'
  #  fi
  #}
  # <<<<<<<<<<<<<<<<<<<<

  # >>>>>>>>>>>>>>>>>>>>
  # iterm setting
  # https://iterm2.com/documentation-shell-integration.html
  source /Users/cd/.iterm2_shell_integration.zsh
  # <<<<<<<<<<<<<<<<<<<<

  # >>>>>>>>>>>>>>>>>>>>
  # nnn config
  alias ls='n -de' # needs nnn; triggered by n() at below for quit+cd
  n ()
  {
      # Block nesting of nnn in subshells
      if [[ "${NNNLVL:-0}" -ge 1 ]]; then
          echo "nnn is already running"
          return
      fi

      # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
      # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
      # see. To cd on quit only on ^G, remove the "export" and make sure not to
      # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
      #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
      export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

      # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
      # stty start undef
      # stty stop undef
      # stty lwrap undef
      # stty lnext undef

      # The backslash allows one to alias n to nnn if desired without making an
      # infinitely recursive alias
      \nnn "$@"
      if [ -f "$NNN_TMPFILE" ]; then
              . "$NNN_TMPFILE"
              rm -f "$NNN_TMPFILE" > /dev/null
      fi
  }
  BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
  export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
  export NNN_PLUG='z:autojump;c:cdpath;d:dragdrop;f:fixname;o:openall;v:x2sel'
  # <<<<<<<<<<<<<<<<<<<<

  # >>>>>>>>>>>>>>>>>>>>
  # Chromium
  export GOOGLE_API_KEY="no"
  export GOOGLE_DEFAULT_CLIENT_ID="no"
  export GOOGLE_DEFAULT_CLIENT_SECRET="no"
  # <<<<<<<<<<<<<<<<<<<<

  # >>>>>>>>>>>>>>>>>>>>
  export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
  # <<<<<<<<<<<<<<<<<<<<
  ;;
###################
  Linux)
    plugins=(
      git
      zsh-syntax-highlighting
      docker
      docker-compose
      zsh-autosuggestions
      sudo
      vscode
      z
    #    vi-mode don't use it. conflicts with ctrl-R; may needs how to exit it
      # extract: not installed yet
    )
    source $ZSH/oh-my-zsh.sh
;;
esac

# todo when conf file grows bigger. should use self defined script/alias/etc. for diff env
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000 # history in mem from file
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS #ignore duplice
# ignore wrong cmd to history
# https://superuser.com/a/902508
zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }

# Uncomment the following line to use case-sensitive completion.
  CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# For a full list of active aliases, run `alias`.
alias lac="colorls -lA --sd"
alias ssha="eval '$(ssh-agent -s)' && ssh-add -A"
alias hist="history -100"
# needs plugins/software/envir..
alias venv='python3 -m venv venv'
# something wrong with pip/pip3
alias pip='python3 -m pip'
alias active='source venv/bin/activate && which python3'
alias gcc='gcc-12'
alias aria='aria2c'
alias ze='z -e'

setopt no_nomatch #可在程序里继续匹配
setopt nonomatch # match with *
setopt SHARE_HISTORY #TTY 共享 history

