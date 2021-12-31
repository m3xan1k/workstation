COMPOSE_VERSION=""

if [ -z "${COMPOSE_VERSION}" ]
then
    echo "COMPOSE_VERSION not defined"
    exit 0
fi

# add python repo
echo | sudo add-apt-repository ppa:deadsnakes/ppa

# update cache
sudo apt update

# install utils
sudo apt install -y curl software-properties-gtk ubuntu-restricted-extras filezilla vim neovim gnome-shell-pomodoro tilix keepass2 obs-studio virtualbox vlc transmission-qt apt-transport-https ca-certificates build-essential software-properties-common python3.10 python3.10-dev fonts-firacode gnome-tweaks

# install docker
sudo apt install -y docker.io
sudo usermod -aG docker ${USER}

# install compose
echo "Installing docker-compose"
sudo curl -L https://github.com/docker/compose/releases/download/v${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# download and exttract telegram
echo "Downloading telegram"
curl -L https://telegram.org/dl/desktop/linux -o ${HOME}/Downloads/telegram.tar.xz
tar -zxvf ${HOME}/Downloads/telegram.tar.xz

# download and install vscode
echo "Downloading vscode"
curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -o ${HOME}/Downloads/vscode.deb
sudo dpkg -i ${HOME}/Downloads/vscode.deb
rm ${HOME}/Downloads/vscode.deb
