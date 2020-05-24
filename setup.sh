# dupes alacritty
cat alacritty/alacritty.yml > $HOME/.config/alacritty/alacritty.yml

# update tmux
cat tmux/tmux.conf > ~/.tmux.conf

# update vim
if [[ "$OSTYPE" == "darwin"* ]]; then
	# I guess I could check whether this is already installed
	brew install vim
fi
cat vim/vimrc > ~/.vimrc

