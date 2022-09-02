
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/andy/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/andy/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/andy/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/andy/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#deactivate conda 
export CONDA_AUTO_ACTIVATE_BASE=false
#export TERM=xterm-kitty
export TERM=xterm-kitty
bindkey -v
bindkey "^?" backward-delete-char
#Alias
# some more ls aliases
alias ls='lsd '
#alias lsd='ls '
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias top='btop'
alias nv='nvim '
alias v='vim '
alias p='python3 '
alias p3='python3 '
alias cat='bat '
alias cl='clear'
alias emacs='emacs -nw '
alias em='emacs -nw '
alias z='zathura '
alias r='ranger '
alias sshpurple='ssh -v -i "/Users/andy/.ssh/andysmac" andy@192.168.4.178 -p 21796'
alias ssh415='sudo ssh -i /Users/andy/.ssh/csc415-aws.pem ubuntu@3.87.52.139'

alias cdh='cd /Users/andy/'
alias cdd='cd /Users/andy/dev/'
alias cdc='cd /Users/andy/Library/Mobile\ Documents/'
alias cda='cd /Users/andy/dev/fall2022/'
alias cdn='cd /Users/andy/dev/current/'
 
alias todo='emacs -nw /User/andy/Library/Mobile Documents/todo.org'

#bindkey "^?" backward-delete-char
eval "$(starship init zsh)"
export PATH="/usr/local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andy/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/andy/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andy/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/andy/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
