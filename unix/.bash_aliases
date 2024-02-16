alias v='vim '
alias r='ranger '
alias cl='clear '
alias em='emacs -nw '
alias md='mkdir -p '
#alias cd='z ' # for Zoxide
alias cd='cd_func() { builtin cd "$@" && ls; }; cd_func'   
alias cdh='cd $HOME'
alias cdm='cd $HOME/magenta'
alias bashrc='vim $HOME/.bashrc; refreshenv'
alias bash_alias='vim $HOME/.bash_aliases; refreshenv'
alias i3conf='vim $HOME/.config/i3/config'
alias refreshenv='source $HOME/.bashrc; echo "Environment Refreshed!"'
alias gpt='chatblade --openai-api-key $OPENAI_API_KEY '


# custom user commands
alias fehd='feh --bg-fill $HOME/Pictures/backgrounds/ambient1.jpg'
copyclip() {  ## STDOUT to clipboard
	xclip -selection clipboard <<< "$(eval "$@")"
}

## Kazam Screenshotting - Kazam doesn't work well with the picom compositor, so installing from niknah/kazam might be helpful

alias kazam="bash $HOME/UserInstalledApps/kazam/bin/run_local_dev.sh"

# SSH
alias sshb='ssh -p '21796' x-candy6@192.168.5.10'

# Development Commands
## python
alias pv='python --version'
alias p='python '

## conda
alias ci='conda info'
alias cle='conda info --envs'
alias cce='conda create -n ' #inputs: name and python={version}

## Django
alias pmmm='python manage.py makemigrations'
alias pmm='python manage.py migrate'
alias pmr='python manage.py runserver'

## git
alias gi='git init'
alias ga='git add '
alias gaa='git add .'
alias gc='git commit -m '
alias gp='git push '
alias gico='git init; git add .; git commit ; git push;'
alias dotup='read -e updated_file;echo adding $(updated_file);yadm add ${updated_file}; yadm commit -m "updates"; yadm push;'


# Web 
#alias getlinks='echo "curl -s URL | grep -Eo \'href="https?://[^"]+\' | sed \'s/href=\'//\'"'


alias music='mpv --playlist=$HOME/magenta/media/Music/playlist.m3u --shuffle > /dev/null 2>&1 &'


