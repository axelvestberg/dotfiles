# Axel's dotfiles

## Goal
This will be my repo for maintaining and setting up my local dev machine. It should install and setup my machine by pulling this repo.

## List of applications & Packages to be installed
* google chrome
* vscode
* zsh
* npm
* git
* rbenv
* nvm
* heroku
* rcm
* zip
* spotify
* curl
* node
* nvm
* i3gaps
* polybar
* zsh
* oh-my-zsh
* oh-my-zsh theme "pi"
* feh
* neofetch
* rcm
    * sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
    * sudo apt-get update
    * sudo apt-get install rcm

## Important config files that should be inside this repo
~/.config/i3/config  
~/.oh-my-zsh/oh-my-zsh.sh  
~/.zshrc  
~/useful-scripts  
~/post_install_script.sh  

## Code
mkdir ~/code && cd ~/code  
git clone chosen repos

## Notes
> each installation that requires dependencies should try to install them in that section, this will make the script bigger but it will also make it more manageable in case of future changes

## TODO
* Todo copy all config files above to the repository
* Learn rcm and start to use it + add the rcm setup to the install script
* Organize the structure of the post_install_script and start testing it on a virtual machine
* Write setup script (post_install_script.sh)
* Write it to work for both ubuntu and macOS
