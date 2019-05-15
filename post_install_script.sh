# PACKAGES #

# Structure
## Basic packages
## Dependecies
## Own titles for more complex setups
### Rbenv
### Google Chrome
### Spotify
### Vscode
### Nodejs
### Npm
###
## Clone dotfile
## Clone code repositories

## Basic packages
git
curl
wget
feh
# Dependencies
sudo apt install \
	libxcb1-dev \
	libxcb-keysyms1-dev \
	libpango1.0-dev \
	libxcb-util0-dev \
	libxcb-icccm4-dev \ 
	libxcb-cursor-dev \
	libxcb-xinerama0-dev \
	libxcb-xkb-dev libxkbcommon-dev \
	libxkbcommon-x11-dev \
	autoconf \
	xutils-dev \
	libtool \
	libxcb-xrm-dev \
	libssl-dev \
	libxcb-shape0-dev \
	autoconf \
	bison \
	build-essential \
	libssl-dev \
	libyaml-dev \
	libreadline6-dev \
	zlib1g-dev \
	libncurses5-dev \
	libffi-dev \
	libgdbm5 \
	libgdbm-dev \
	cmake \
	cmake-data \
	libcairo2-dev \
	libxcb1-dev \
	libxcb-ewmh-dev \
	libxcb-icccm4-dev \
	libxcb-image0-dev \
	libxcb-randr0-dev \
	libxcb-util0-dev \
	libxcb-xkb-dev \
	pkg-config \
	python-xcbgen \
	xcb-proto \
	libxcb-xrm-dev \
	libasound2-dev \
	libmpdclient-dev \
	libiw-dev \
	libcurl4-openssl-dev \
	libpulse-dev \
	libxcb-composite0-dev \
	xcb \
	libxcb-ewmh2

# i3-gaps-next
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

# polybar
cd ~ && git clone https://github.com/jaagr/polybar.git
cd polybar && ./build.sh

# vscode
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

# rbenv
sudo apt update
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc

# clone dotfiles
cd ~ && git clone https://guthub.com/axelvestberg/dotfiles.git

# clone code repositories
mkdir ~/code && cd ~/code
# TODO: add git clone <repo name>