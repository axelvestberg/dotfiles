## My post install script for ubuntu 19.04 ##

# dependencies
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
	libxcb-ewmh2 \
	libpq-dev \
	gcc \
	g++ \
	make

# git

# curl

# wget

# rcm

#postgresql
sudo apt-get install \
	postgresql \
	postgresql-contrib

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
sudo apt install \
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
	libgdbm-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
x-terminal-emulator -e rbenv install 2.5.3
x-terminal-emulator -e rbenv install 2.5.5
x-terminal-emulator -e rbenv install 2.6.0
x-terminal-emulator -e rbenv global 2.6.0
gem install bundler
gem install pg

# heroku-cli
echo "deb https://cli-assets.heroku.com/branches/stable/apt ./" > /etc/apt/sources.list.d/heroku.list
wget -qO- https://cli-assets.heroku.com/apt/release.key | apt-key add -
sudo apt-get update && apt-get install -y heroku

# clone dotfiles
cd ~ && git clone https://github.com/axelvestberg/dotfiles.git

# clone code repositories
mkdir ~/code &&
git clone git@github.com:axelvestberg/pwgen-react.git
git clone git@github.com:axelvestberg/public_html.git
git clone git@github.com:studiocodedesign/boostified-rails.git

# npm & nodejs with nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
source ~/.profile
nvm install node
nvm use node

# zip

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# zsh

# oh-my-zsh

# oh-my-zsh theme "pi"

# feh

# neofetch

# Move some of the config files to the right places e.g ~/.config/i3/config