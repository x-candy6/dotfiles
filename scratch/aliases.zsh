# ╔═╗┬  ┬┌─┐┌─┐┌─┐┌─┐
# ╠═╣│  │├─┤└─┐├┤ └─┐
# ╩ ╩┴─┘┴┴ ┴└─┘└─┘└─┘

# apt
alias sai='sudo apt install '
alias sauu='sudo apt update && sudo apt upgrade'
alias sas='sudo apt search '

# systemctl
alias sss='sudo systemctl status '
alias ssr='sudo systemctl restart '
alias sse='sudo systemctl enable '
alias ssd='sudo systemctl disable '

alias v='vim '
alias r='ranger '
alias cl='clear '
alias em='emacs -nw '
alias md='mkdir -p '
#alias refresh='source $HOME/.bashrc; echo "Environment Refreshed!"' # just do 'bash' or 'zsh'
alias gpt='chatblade --openai-api-key $OPENAI_API_KEY '

# cd shortcuts
#alias cd='cd_func() { builtin cd "$@" && ls; }; cd_func'   

alias cdh='cd $HOME'
alias cdm='cd $HOME/magenta'
alias cdc='cd $HOME/.config'
alias cdd='cd $HOME/Downloads'
alias dev='cd $HOME/dev'

# ease-of-use
alias calc='calc_func(){ echo $(($@)); }; calc_func' # Simple calculations, i.e. "calc 3+3"

# edit configurations
alias kittyconf='vim $HOME/.config/kitty/kitty.conf'
alias ohmyzsh="mate ~/.oh-my-zsh"
alias i3conf='vim $HOME/.config/i3/config '
alias picomconf='vim $HOME/.config/picom/picom.conf '
alias vimrc='vim $HOME/.vimrc '
alias bashrc='vim $HOME/.bashrc; refreshenv'
alias bash_alias='vim $HOME/.bash_aliases; refreshenv'
alias i3conf='vim $HOME/.config/i3/config'
alias startup='vim $HOME/.config/startup.sh'
alias smbconf='sudo vim /etc/samba/smb.conf ; sudo service smbd restart'
alias sshdconf='sudo vim /etc/ssh/sshd_config'
alias sshconf='sudo vim /etc/ssh/ssh_config'
alias samba-restart='sudo service smbd restart'
alias mpdconf='vim $HOME/.config/mpd/mpd.conf'
alias zshenv='vim $HOME/.zshenv'
alias zshrc='vim $HOME/.zshrc'

# permissions
alias chx='chmod +x '
alias chrwx='chmod +rwx '


# ╔═╗┌─┐┌─┐  ╔═╗┌─┐┌─┐┌─┐┬┌─┐┬┌─┐
# ╠═╣├─┘├─┘  ╚═╗├─┘├┤ │  │├┤ ││
# ╩ ╩┴  ┴    ╚═╝┴  └─┘└─┘┴└  ┴└─┘


# Figlet
alias fehd='feh --bg-fill $HOME/Pictures/backgrounds/ambient1.jpg'
copyclip() {  ## STDOUT to clipboard
	xclip -selection clipboard <<< "$(eval "$@")"
}

## Kazam Screenshotting - Kazam doesn't work well with the picom compositor, so installing from niknah/kazam might be helpful

alias kazam="bash $HOME/UserInstalledApps/kazam/bin/run_local_dev.sh"

# SSH

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

## gh
alias grc='$HOME/.config/gh/scripts/gh-repo-create.sh'

alias gpt='chatblade '

# Web 
#alias getlinks='echo "curl -s URL | grep -Eo \'href="https?://[^"]+\' | sed \'s/href=\'//\'"'


alias music='mpv --playlist=$HOME/magenta/media/Music/playlist.m3u --shuffle > /dev/null 2>&1 &'


# Productivity
## Notes
alias stack-notes='emacs $HOME/Documents/Notes/stackmatix-notes-$(date "+%Y-%m-%d").org &'

# Ebay
alias ebay-orders="cd ~/Dev/workspaces/coolcatcollectibles && poetry run orders && xdg-open src/ebay/reports"






