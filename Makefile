.PHONY: backup
backup:
	cp ~/amiorin/.alacritty.yml alacritty.yml
	cp ~/amiorin/.tmux.conf tmux.conf
	cp ~/amiorin/.config/fish/config.fish config.fish
	cp ~/amiorin/.config/skhd/skhdrc skhdrc
	cp ~/amiorin/.config/yabai/yabairc yabairc
	cp ~/amiorin/.local/fixterm fixterm
	cp ~/amiorin/.local/bin/24-bit-color.sh 24-bit-color.sh
	cp ~/amiorin/.local/bin/sessions.sh sessions.sh
	cp ~/amiorin/.tmux/plugins/tmuxifier/layouts/* tmuxifier
	cp ~/amiorin/.config/wezterm/wezterm.lua wezterm.lua
	cp ~/amiorin/.config/neovide/config.toml config.toml
	cp ~/amiorin/.config/direnv/direnv.toml direnv.toml
	cp ~/amiorin/.config/zellij/config.kdl config.kdl
	cp ~/amiorin/.config/zellij/layouts/minimal.kdl dotfiles/zellij/layouts/minimal.kdl
	cp ~/amiorin/.config/atuin/config.toml dotfiles/atuin/config.toml
	cp ~/amiorin/.config/starship.toml dotfiles/starship/starship.toml
	cp ~/amiorin/.local/bin/happy-emacs dotfiles/bin/happy-emacs
	cp ~/amiorin/.aerospace.toml dotfiles/aerospace/aerospace.toml

.PHONY: install
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
	cp dotfiles/bin/happy-emacs ~/.local/bin/happy-emacs
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
	mkdir -p ~/.config/zellij/layouts
	cp config.kdl ~/.config/zellij/config.kdl
	cp dotfiles/zellij/layouts/minimal.kdl ~/.config/zellij/layouts/minimal.kdl
	mkdir -p ~/.config/atuin
	cp dotfiles/atuin/config.toml ~/.config/atuin/config.toml
	mkdir -p ~/.config
	cp dotfiles/starship/starship.toml ~/.config/starship.toml
