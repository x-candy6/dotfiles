#!/usr/bin/env bash

# A separate script to use when unable to use autoinstallation applications

# Installing packages available on default repo
yes | sudo apt install build-essential openssh-server git curl wget htop btop tree docker nginx mysql-server postgresql nodejs npm emacs tmux ffmpeg yt-dlp imagemagick rsync jq zip ufw net-tools vlc wireshark gh code ranger zsh libncurses-dev zoxide samba figlet snapd trash-cli rclone bat deluge

# Installing vim
git clone "https://github.com/vim/vim"
export MYVIMRC="$HOME/.vimrc"
echo "CONF_OPT_PYTHON3 = --enable-python3interp" >> ./vim/src/Makefile
cd ./vim/src ; make; make install;
mv ./vim /usr/local/bin/
cd $HOME

#Installing Coc
curl -sL install-node.vercel.app/lts | sudo bash

# Getting dotfiles
mkdir dev; cd dev; mkdir configurations; cd configurations; git clone https://github.com/x-candy6/dotfiles; cd dotfiles/unix/;
mkdir -p $HOME/.config/starship
mv ./.vimrc ./.bashrc ./.bash_aliases $HOME
mv ./.config/starship/* $HOME/.config/starship
cd $HOME

# Installing starship
curl -sS https://starship.rs/install.sh | sh

# Installing NerdFont
sudo cp *.ttf /usr/share/fonts
sudo fc-cache -f -v

# Installing Vimium
firefox -install-global extension https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/

# Installing Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Installing snap packages
sudo snapd install portal

# Installing Password Managers
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list
sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
yes | sudo apt update && sudo apt install 1password

# VPNs 
# Mullvad VPN
sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc
echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mullvad.list
yes | sudo apt install mullvad-vpn
