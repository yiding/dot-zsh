fpath=( "$HOME"/.zsh $fpath )

# Command line tool configuration

# prompt 
autoload -U promptinit && promptinit
prompt pure

# history

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zhistory
setopt EXTENDED_HISTORY      # Record time of command execution to history file
setopt HIST_IGNORE_ALL_DUPS  # Removes duplicate lines after every entry, keeping newest
setopt HIST_REDUCE_BLANKS    # Remove excessive blanks
setopt HIST_FIND_NO_DUPS     # Don't return duplicate commands more than once when searching
setopt HIST_SAVE_NO_DUPS     # Don't save duplicate entries
setopt HIST_IGNORE_DUPS      # Don't save repeated entries
setopt HIST_EXPIRE_DUPS_FIRST # Prune duplicate entries first.
setopt HIST_IGNORE_SPACE     # Don't write into history commands starting with space
setopt HIST_NO_FUNCTIONS     # Don't write into history file function definitions
setopt INC_APPEND_HISTORY    # Append to history file after each command
setopt SHARE_HISTORY         # Check history file after each command

# Tool configuration
export CLICOLOR=1  # Colorized output for ls

# Input
KEYTIMEOUT=1
bindkey -v 
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^R' history-incremental-search-backward
bindkey '^H' backward-delete-char
bindkey '^?' backward-delete-char

# aliases
alias ec="emacsclient --alternate-editor=''"
alias ecc="emacsclient --alternate-editor='' --create-frame"
