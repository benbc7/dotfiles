# =============================================================================
#				ZSH Config File
# =============================================================================

# Import colorscheme from 'wal' asynchronously
# $	# Run the process in the background.
# ( )	# Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

function chpwd() {
	print -Pn "\e]2;%~\a"
}

function precmd() {
    print -Pn "\e]2;%~\a"
}

# =============================================================================
#                                   Variables
# =============================================================================
# Common ENV variables
export TERM="xterm-256color"
export SHELL="/bin/zsh"
export EDITOR="code"
set clipboard=unnamedplus

# Fix Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# improved less option
export LESS="--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS"

#export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

# Directory coloring
if [[ $OSTYPE = (darwin|freebsd)* ]]; then
    #export CLICOLOR="YES" # Equivalent to passing -G to ls.
    #export LSCOLORS="exgxdHdHcxaHaHhBhDeaec"
    #export LS_OPTIONS='-G'
    export CLICOLOR=true
    export LSCOLORS='exfxcxdxbxGxDxabagacad'

    #[ -d "/opt/local/bin" ] && export PATH="/opt/local/bin:$PATH"

    ## Prefer GNU version, since it respects dircolors.
    #if (( $+commands[gls] )); then
    #   alias ls='() { $(whence -p gls) -Ctr --file-type --color=auto $@ }'
    #else
    #   alias ls='() { $(whence -p ls) -CFtr $@ }'
    #fi
fi

if [[ $OSTYPE = (linux)* ]]; then
    export LS_OPTIONS='--color=auto'
fi

# Common aliases
alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"
alias ls="ls $LS_OPTIONS -hFtr"
alias ll="ls $LS_OPTIONS -lAhFtr"
alias ccat="pygmentize -O style=monokai -f 256 -g"
alias dig="dig +nocmd any +multiline +noall +answer"

disable -r time       # disable shell reserved word
alias time='time -p ' # -p for POSIX output

# =============================================================================
#		    zsh-newuser-install section *DO NOT EDIT*
# =============================================================================

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/isotope/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# =============================================================================
#                               oh-my-zsh
# =============================================================================

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/isotope/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  archlinux
  sudo
  vscode
  web-search
  vim-interaction
  extract
  z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# =============================================================================
#                                Custom Aliases
# =============================================================================

## Modified Commands
alias diff='colordiff'			#requires colordiff package
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'

## New Commands
alias notes='vim ~/Documents/Work/notes.txt'
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'		#requires an argument
alias openports='ss --all --numeric --process --ipv4 --ipv6'
alias pgg='ps -Af | grep'
alias ..='cd ..'
alias desktop='sudo systemctl start lightdm'
alias chrome='google-chrome-stable & disown'

# Privileged access
if (( UID != 0)); then
	alias sudo='sudo '
	alias scat='sudo cat'
	alias svim='sudoedit'
	alias snano='sudo nano'
	alias root='sudo -i'
	alias reboot='sudo systemctl reboot'
	alias poweroff='sudo systemctl poweroff'
	alias update='sudo pacman -Su; yay -Syu --devel --timeupdate'
	alias orphans='sudo pacman -Rns $(pacman -Qtdq)'
	alias netctl='sudo netctl'
	alias wifi-menu='sudo wifi-menu'
fi

## ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'			# recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'			# sort by extension
alias lz='ll -rS'			# sort by size
alias lt='ll -rt'			# sort by date
alias lm='la | more'

## Safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'			# 'rm -i' promts for every file
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls=' echo -ne "\033c"'		# clear screen for real (it does not work in Terminology)

## Make Bash error tolorant
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'

# =============================================================================
#                                   Options
# =============================================================================
#autoload -Uz add-zsh-hook
#autoload -Uz compinit && compinit -u
#autoload -Uz url-quote-magic
#autoload -Uz vcs_info

#zle -N self-insert url-quote-magic

setopt autocd                   # Allow changing directories without `cd`
setopt append_history           # Dont overwrite history
setopt auto_list
setopt auto_menu
setopt auto_pushd
setopt extended_history         # Also record time and duration of commands.
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_find_no_dups        # Dont display duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.
setopt hist_ignore_space        # Ignore commands that start with space.
#setopt hist_ignore_all_dups
#setopt hist_ignore_dups
#setopt hist_reduce_blanks
#setopt hist_save_no_dups
#setopt ignore_eof
setopt inc_append_history
setopt interactive_comments
setopt no_beep
setopt no_hist_beep
setopt no_list_beep
setopt magic_equal_subst
setopt notify
setopt print_eight_bit
setopt print_exit_value
setopt prompt_subst
setopt pushd_ignore_dups
#setopt rm_star_wait
setopt share_history            # Share history between multiple shells
setopt transient_rprompt

## Changing directories
#setopt auto_pushd
#setopt pushd_ignore_dups        # Dont push copies of the same dir on stack.
#setopt pushd_minus              # Reference stack entries with "-".
#
#setopt extended_glob

bindkey -v
bindkey -v '^?' backward-delete-char
bindkey '^[[Z' reverse-menu-complete
#bindkey '^@' anyframe-widget-cd-ghq-repository
#bindkey '^r' anyframe-widget-put-history

#function cd() {
#   builtin cd $@ && ls;
#}

# Watching other users
#WATCHFMT="%n %a %l from %m at %t."
watch=(notme)         # Report login/logout events for everybody except ourself.
LOGCHECK=60           # Time (seconds) between checks for login/logout activity.
REPORTTIME=5          # Display usage statistics for commands running > 5 sec.

# Key timeout and character sequences
KEYTIMEOUT=1
WORDCHARS='*?_-[]~=./&;!#$%^(){}<>'

zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }

# =============================================================================
#                                Key Bindings
# =============================================================================

# Common CTRL bindings.
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^f" forward-word
bindkey "^b" backward-word
bindkey "^k" kill-line
bindkey "^d" delete-char
bindkey "^y" accept-and-hold
bindkey "^w" backward-kill-word
bindkey "^u" backward-kill-line
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^F" history-incremental-pattern-search-forward

# Do not require a space when attempting to tab-complete.
bindkey "^i" expand-or-complete-prefix

# Fixes for alt-backspace and arrows keys
bindkey '^[^?' backward-kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
#bindkey "^[[C" forward-word
#bindkey "^[[D" backward-word

## Emulate tcsh's backward-delete-word
#tcsh-backward-kill-word () {
#    local WORDCHARS="${WORDCHARS:s#/#}"
#    zle backward-kill-word
#}
#zle -N tcsh-backward-kill-word

# https://github.com/sickill/dotfiles/blob/master/.zsh.d/key-bindings.zsh
tcsh-backward-word () {
    local WORDCHARS="${WORDCHARS:s#./#}"
    zle emacs-backward-word
}
zle -N tcsh-backward-word
bindkey '\e[1;3D' tcsh-backward-word
bindkey '\e^[[D' tcsh-backward-word # tmux

tcsh-forward-word () {
    local WORDCHARS="${WORDCHARS:s#./#}"
    zle emacs-forward-word
}
zle -N tcsh-forward-word
bindkey '\e[1;3C' tcsh-forward-word
bindkey '\e^[[C' tcsh-backward-word # tmux

tcsh-backward-delete-word () {
    local WORDCHARS="${WORDCHARS:s#./#}"
    zle backward-delete-word
}
zle -N tcsh-backward-delete-word
bindkey "^[^?" tcsh-backward-delete-word # urxvt

# =============================================================================
#                                 Completions
# =============================================================================
zstyle ':completion:' completer _complete _match _approximate
zstyle ':completion:' group-name ''
#zstyle ':completion:' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:' use-cache true
zstyle ':completion:' verbose yes
zstyle ':completion::default' menu select=2
zstyle ':completion::descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*:options' description 'yes'

# case-insensitive (uppercase from lowercase) completion
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# process completion
#zstyle ':completion:*:processes' command 'ps -au$USER'
#zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

# zstyle
zstyle ':completion:*' completer _expand _complete _ignored _approximate
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{yellow}%d%f%u'
#zstyle ':completion:*:*:git:*' script ~/.git-completion.sh


zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# case-insensitive (all), partial-word and then substring completion
zstyle ":completion:*" matcher-list \
    "m:{a-zA-Z}={A-Za-z}" \
    "r:|[._-]=* r:|=*" \
    "l:|=* r:|=*"

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"

#ZLE_RPROMPT_INDENT=0

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# vim: ft=zsh