sudo apt update && sudo apt upgrade

sudo apt install \
    sudo apt install cinnamon-core \
    gnome-system-monitor \
    firefox-esr \
    git \
    nemo-font-manager \
    libncurses-dev \
    xclip \
    xsel \
    rofi \
    neofetch \
    ripgrep \
    fzf \
    wireguard \
    chromium \
    filezilla \
    keepass2 \
    evince \
    mpv \
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
    libreoffice \
    lz4 \
    build-essential \
    vim \
    obs-studio \
    ca-certificates \
    gnupg


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

# software
mkdir software
git clone git@github.com:m3xan1k/st.git ~/software/st
git clone git@github.com:m3xan1k/tabbed.git ~/software/tabbed

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# golang
curl -O https://go.dev/dl/go1.20.5.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.5.linux-amd64.tar.gz

# VIMIX theme
git clone https://github.com/ghostbsd/ghostbsd-wallpapers ~/Downloads/ghostbsd-wallpapers
git clone https://github.com/ghostbsd/ghostbsd-mate-themes.git ~/Downloads/ghostbsd-mate-themes
git clone https://github.com/ghostbsd/ghostbsd-icons.git ~/Downloads/ghostbsd-icons

echo "Installing themes..."
    if [ ! -d ~/.themes ]; then     mkdir ~/.themes; fi
cp -R ~/Downloads/ghostbsd-mate-themes/themes/* ~/.themes

echo "Installing icons..."
    if [ ! -d ~/.local/share/icons ]; then   mkdir ~/.local/share/icons; fi
cp -R ~/Downloads/ghostbsd-icons/icons/* ~/.local/share/icons

mkdir ~/.backgrounds
cp -R ghostbsd-wallpapers/ ~/.backgrounds/

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

sudo dpkg -i ./containerd.io_1.6.21-1_amd64.deb \
    ./docker-ce_24.0.2-1~debian.12~bookworm_amd64.deb \
    ./docker-ce-cli_24.0.2-1~debian.12~bookworm_amd64.deb \
    ./docker-buildx-plugin_0.10.5-1~debian.12~bookworm_amd64.deb \
    ./docker-compose-plugin_2.18.1-1~debian.12~bookworm_amd64.deb

# node js stuff
# as root
# curl -fsSL https://deb.nodesource.com/setup_18.x | bash - &&\
# apt-get install -y nodejs
# sudo apt install npm
# sudo npm install -g pyright

# dbgate
curl -L -O https://github.com/dbgate/dbgate/releases/download/v5.2.6/dbgate-5.2.6-linux_amd64.deb
sudo dpkg -i dbgate-5.2.6-linux_amd64.deb

# insomnia
curl -L -O https://github.com/Kong/insomnia/releases/download/core@2023.2.2/Insomnia.Core-2023.2.2.deb
sudo dpkg -i Insomnia.Core-2023.2.2.deb
