

####################
#•start alias list•#
####################

alias chx='chmod +x '

#Jekyll
alias jserve='bundle exec jekyll serve'

#mkdir
alias md='mkdir -p '
alias cp='cp -rf  '

#brew
alias bi='brew install '

#ls
#alias ls='lsd '
#alias lsd='ls '
#alias ll='ls -alF'
#alias la='ls -A'
#alias l='ls -CF'
#alias top='btop'
#alias cat='bat '
alias cl='clear'
#alias ffgif='$HOME/dotfiles/scripts/ffgif.sh'
#alias yw='$HOME/dotfiles/macOS/mac-scripts/yabWindows.bash'

# IDE's Editors etc
alias v='vim '
alias nv='nvim '
alias p3='python3 '
alias e='emacs -nw '
alias emacs='emacs -nw '
alias em='emacs -nw '

#Programming
alias zshrc='vim $HOME/.zshrc'

#scripting
alias script='$HOME/dotfiles/scripts/mk_script.sh' #make script.sh

#npm
alias ni='npm install '
alias naf='npm audit fix --force'


#Python
alias p='python3.10 '
alias pip3='python3.10 -m pip '

#Java
alias jr='rm -rf ./*.class'
alias jc='javac '
alias j='java '

#C
alias mcmr='make clean; make run;'
alias mc='make clean'
alias crun='rm -rf ./*.out ./*.class ./*.o; make clean; make run RUNOPTIONS='
alias clean='rm -rf ./*.out ./*.class ./*.o '

# Specific Applications
alias zat='zathura '
alias tabzat='tabbed -c zathura -e '
alias r='ranger '
alias sc='stegcloak '

alias fza='fzf -m --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all'

# Figlet 
# -k prevents smush FIGCharacters, -t uses wide terminals, -w 100 , 100 columns, -c center
# ex) figlet -f Sub-Zero.flf -k -t -w 100 -c 
alias fig='figlet -f '
alias figa='la -C -w 50 /usr/local/var/homebrew/linked/figlet/share/figlet/fonts/' 
alias figp='figlet -f '
alias figf='cat $HOME/figfav '
alias figfav='$HOME/dotfiles/scripts/addFigFav.sh'
alias figsz='figlet -f Sub-Zero.flf -k -t -w 100 -c '

# Google Translate
alias t='$HOME/trans '
alias tk='$HOME/trans :ko '
alias tj='$HOME/trans :ja '
alias tf='$HOME/trans :fr '
alias sq="sed '2,3!d' > sed -e 's/.*\"\(.*\)\".*/\1/'"

#VCS git/github, tig, gitcommander
alias fastCommit='echo "Enter Commit MSG" ;read msg; git add .; git commit -m "$msg"; git push'
alias gc='git-commander '
alias gitd=

# Pandoc
alias pdo='pandoc -s -o '
alias pdm='echo "\nConvert hello.txt from MD to latex\n pandoc -f markdown -t latex hello.txt\n Hello.html to MD\npandoc -f html -t markdown hello.html"'

#yt-dlp
alias ytc='yt-dlp --cookies $HOME/cookies.txt '

# cURL
alias cx='curl -X '

# CD 
alias cd='z '
alias cdh='cd /Users/$HOME/'
alias cdd='cd /Users/$HOME/dev/'

alias cordless='$HOME/cordless/cordless'
alias switchCord='$HOME/.cordless/switchACC.bash'

# SURGE
alias surge='echo | surge'

# trash-cli
#alias rm='trash '
#alias rma='trash ./*'

#bindkey "^?" backward-delete-char
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
export PATH="/usr/local/bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/$HOME/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/$HOME/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/$HOME/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$HOME/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

#alias yws='$HOME/dotfiles/macOS/mac-scripts/yabWinSearch.bash'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#export PATH="/usr/local/opt/openssl@3/bin:$PATH"
