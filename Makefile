status:
	cp ~/.alacritty.yml alacritty.yml
	cp ~/.tmux.conf tmux.conf
	cp ~/.config/fish/config.fish config.fish
	cp ~/.config/skhd/skhdrc skhdrc
	cp ~/.config/yabai/yabairc yabairc
	cp ~/.local/fixterm fixterm
	cp ~/.local/bin/24-bit-color.sh 24-bit-color.sh
	cp ~/.local/bin/sessions.sh sessions.sh
	cp ~/.tmux/plugins/tmuxifier/layouts/* tmuxifier
	cp ~/.config/wezterm/wezterm.lua wezterm.lua
	cp ~/.config/neovide/config.toml config.toml
	cp ~/.config/direnv/direnv.toml direnv.toml
	cp ~/.config/zellij/config.kdl config.kdl

install:
	cp alacritty.yml ~/.alacritty.yml
	cp tmux.conf ~/.tmux.conf
	mkdir -p ~/.config/fish
	cp config.fish ~/.config/fish/config.fish
	mkdir -p ~/.config/skhd
	cp skhdrc ~/.config/skhd/skhdrc
	mkdir -p ~/.config/yabai
	cp yabairc ~/.config/yabai/yabairc
	mkdir -p ~/.local
	cp fixterm ~/.local/fixterm
	mkdir -p ~/.local/bin
	cp 24-bit-color.sh ~/.local/bin/24-bit-color.sh
	mkdir -p ~/.local/bin
	cp sessions.sh ~/.local/bin/sessions.sh
	mkdir -p ~/.tmux/plugins/tmuxifier/layouts
	cp tmuxifier/* ~/.tmux/plugins/tmuxifier/layouts
	mkdir -p ~/.config/wezterm
	cp wezterm.lua ~/.config/wezterm/wezterm.lua
	mkdir -p ~/.config/neovide
	cp config.toml ~/.config/neovide/config.toml
	mkdir -p ~/.config/direnv
	cp direnv.toml ~/.config/direnv/direnv.toml
	mkdir -p ~/.config/zellij
	cp config.kdl ~/.config/zellij/config.kdl

.PHONY: status install
