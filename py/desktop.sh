# Yarn repo add
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt upgrade

# Add regolith repo
# sudo add-apt-repository ppa:regolith-linux/release
# sudo apt install regolith-desktop 

# Install the X-session server
sudo apt install xinit
sudo apt install yarn --no-install-recommends
sudo apt install tmux neovim fzf httpie fonts-powerline terminator zsh zsh-autosuggestions i3-wm feh firefox i3block rofi

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
# oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

python3 -m pip install neovim
# nvm install 12.18.3
# npm i -g neovim
