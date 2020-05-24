# dupes alacritty
cat alacritty/alacritty.yml > $HOME/.config/alacritty/alacritty.yml

# update tmux
cat tmux/tmux.conf > ~/.tmux.conf

# update vim
if [[ "$OSTYPE" == "darwin"* ]]; then
	# I guess I could check whether this is already installed
	brew install vim
fi
# check if vundle is installed
VUNDLE_DIR="~/.vim/bundle/Vundle.vim"
if [ ! -d $VUNDLE_DIR ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
fi
# update vimrc
cat vim/vimrc > ~/.vimrc

