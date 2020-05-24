# dupes alacritty
cat alacritty/alacritty.yml > $HOME/.config/alacritty/alacritty.yml

# update tmux
cat tmux/tmux.conf > $HOME/.tmux.conf
TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ ! -d $TPM_DIR ]; then
	git clone https://github.com/tmux-plugins/tpm $TPM_DIR
	if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
		 tmux source $HOME/.tmux.conf	
	fi
	echo "installed tpm."
	echo "You'll need to go into tmux and then press prefix + I after."
else
	echo "tpm is already installed."
fi

# installs watch
if [[ "$OSTYPE" == "darwin"* ]]; then
	if [[ $(which watch) == *"local"* ]]; then
		echo "Homebrew watch is already installed."
	else	
		brew install watch
	fi
fi
 
# installs ripgrep 
if [[ "$OSTYPE" == "darwin"* ]]; then
	if [[ $(which rg) == *"local"* ]]; then
		echo "Homebrew ripgrep is already installed."
	else	
		brew install ripgrep 
	fi
fi
# get cpu temp info
if [ ! -d "osx-cpu-temp" ]; then
    git clone https://github.com/lavoiesl/osx-cpu-temp.git
    cd osx-cpu-temp
	echo "installing osx-cpu-temp, need password!"
    sudo make install
    cd ..
else
	echo "osx-cpu-temp is already installed."
fi

# update vim
if [[ "$OSTYPE" == "darwin"* ]]; then
	if [[ $(which vim) == *"local"* ]]; then
		echo "Homebrew Vim already installed."
	else	
		brew install vim
	fi
fi
# update vimrc
cat vim/vimrc > ~/.vimrc

# check if vundle is installed
VUNDLE_DIR="$HOME/.vim/bundle/Vundle.vim"
if [ ! -d $VUNDLE_DIR ]; then
	git clone https://github.com/vundlevim/vundle.vim.git $VUNDLE_DIR
	echo "installed vundle."
else
	echo "vundle is already installed."
fi
# install vim plugins
vim +PluginInstall +qall
