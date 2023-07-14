sudo apt update && sudo apt upgrade

sudo apt install \
    gnome-session \
    gnome-terminal \
    gnome-tweaks \
    dconf-editor \
    nautilus \
    nautilus-extension-gnome-terminal \
    firefox-esr \
    git \
    libncurses-dev \
    xclip \
    xsel \
    neofetch \
    ripgrep \
    fzf \
    wireguard \
    filezilla \
    keepass2 \
    mpv \
    vlc \
    flameshot \
    git-cola \
    viewnior \
    python3-pip \
    pipx \
    libx11-dev \
    libxft-dev \
    ninja-build \
    gettext \
    cmake \
    unzip \
    curl \
    clangd-15 \
    fonts-noto-core \
    lz4 \
    build-essential \
    vim \
    ca-certificates \
    gnupg \
    iptables \
    python3-rich \
    fonts-ricty-diminished \
    nodejs \
    npm \
    libffi-dev \
    libgdbm-dev \
    libncurses5-dev \
    libnspr4-dev \
    libnss3-dev \
    libreadline-dev \
    libnspr4-dev \
    pkg-config \
    libfreetype6-dev \
    libfontconfig1-dev \
    libxcb-xfixes0-dev \
    libxkbcommon-dev \
    tmux \
    speech-dispatcher \
    resolvconf

# c language server
sudo ln -s /usr/bin/clangd-15 /usr/bin/clangd

# dotfiles and links
git clone git@github.com:m3xan1k/dotfiles.git

ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
rm ~/.bashrc
ln -s ~/dotfiles/bashrc ~/.bashrc

# pyradio
wget https://raw.githubusercontent.com/coderholic/pyradio/master/pyradio/install.py
python3 install.py

# global python things
pipx install flake8
pipx install pipenv
pipx install ipython


# golang
curl -L -O https://go.dev/dl/go1.20.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.20.5.linux-amd64.tar.gz

# VIMIX theme
git clone https://github.com/ghostbsd/ghostbsd-wallpapers ~/software/ghostbsd-wallpapers
git clone https://github.com/ghostbsd/ghostbsd-mate-themes.git ~/software/ghostbsd-mate-themes
git clone https://github.com/ghostbsd/ghostbsd-icons.git ~/software/ghostbsd-icons

echo "Installing themes..."
    if [ ! -d ~/.themes ]; then     mkdir ~/.themes; fi
cp -R ~/software/ghostbsd-mate-themes/themes/* ~/.themes

echo "Installing icons..."
    if [ ! -d ~/.local/share/icons ]; then   mkdir ~/.local/share/icons; fi
cp -R ~/software/ghostbsd-icons/icons/* ~/.local/share/icons

echo "Installing wallpapers..."
mkdir ~/.wallpapers
cp -R ~/software/ghostbsd-wallpapers/ ~/.wallpapers/

# nerdfonts
# https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip

# Building Neovim
# https://github.com/neovim/neovim/wiki/Building-Neovim

# nvim
git clone git@github.com:m3xan1k/nvim.git ~/.config/nvim

# Telegram Desktop
curl -L https://telegram.org/dl/desktop/linux-amd64 -o ${HOME}/Downloads/telegram.tar.zx
tar -xvf ${HOME}/Downloads/telegram.tar.xz

# docker
curl -L -O https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/containerd.io_1.6.21-1_amd64.deb
curl -L -O https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/docker-buildx-plugin_0.10.5-1~debian.12~bookworm_amd64.deb
curl -L -O https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/docker-ce-cli_24.0.2-1~debian.12~bookworm_amd64.deb
curl -L -O https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/docker-ce_24.0.2-1~debian.12~bookworm_amd64.deb
curl -L -O https://download.docker.com/linux/debian/dists/bookworm/pool/stable/amd64/docker-compose-plugin_2.18.1-1~debian.12~bookworm_amd64.deb

# may fail cause of iptables
sudo dpkg -i ./containerd.io_1.6.21-1_amd64.deb \
    ./docker-ce_24.0.2-1~debian.12~bookworm_amd64.deb \
    ./docker-ce-cli_24.0.2-1~debian.12~bookworm_amd64.deb \
    ./docker-buildx-plugin_0.10.5-1~debian.12~bookworm_amd64.deb \
    ./docker-compose-plugin_2.18.1-1~debian.12~bookworm_amd64.deb

# pyright
sudo npm install -g pyright

# dbgate
curl -L -O https://github.com/dbgate/dbgate/releases/download/v5.2.6/dbgate-5.2.6-linux_amd64.deb
sudo dpkg -i dbgate-5.2.6-linux_amd64.deb

# insomnia
curl -L -O https://github.com/Kong/insomnia/releases/download/core@2023.2.2/Insomnia.Core-2023.2.2.deb
sudo dpkg -i Insomnia.Core-2023.2.2.deb


echo "Install rust manually run: curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
# rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


# grub
echo "clean grub background"
echo "insert GRUB_BACKGROUND="" into /etc/default/grub then run sudo update-grub"

# python older versions
echo "install python version from sources on https://www.python.org/downloads/"
# curl -L -O https://www.python.org/ftp/python/3.8.17/Python-3.8.17.tar.xz
# tar -xf Python-3.8.17.tar.xz
# cd Python-3.8.17
# ./configure --enable-optimizations
# make -j 4
# sudo make altinstall
# python3.8 --version

# yandex-disk
# https://yandex.ru/support/disk-desktop-linux/installation.html
