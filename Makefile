.PHONY: backup
backup:
	cp ~/amiorin/.config/fish/config.fish config.fish
	cp ~/amiorin/.config/skhd/skhdrc skhdrc
	cp ~/amiorin/.local/bin/24-bit-color.sh 24-bit-color.sh
	cp ~/amiorin/.config/wezterm/wezterm.lua wezterm.lua
	cp ~/amiorin/.config/ghostty/config dotfiles/ghostty/config
	cp ~/amiorin/.config/kitty/kitty.conf dotfiles/kitty/kitty.conf
	cp ~/amiorin/.config/kitty/current-theme.conf dotfiles/kitty/current-theme.conf
	cp ~/amiorin/.config/direnv/direnv.toml direnv.toml
	cp ~/amiorin/.config/atuin/config.toml dotfiles/atuin/config.toml
	cp ~/amiorin/.config/starship.toml dotfiles/starship/starship.toml
	cp ~/amiorin/.aerospace.toml dotfiles/aerospace/aerospace.toml
	cp ~/amiorin/.local/bin/dev dotfiles/bin/dev
	cp ~/amiorin/.config/zellij/config.kdl dotfiles/zellij/config.kdl
	cp ~/amiorin/.config/zellij/layouts/minimal.kdl dotfiles/zellij/layouts/minimal.kdl

.PHONY: install
install:
	mkdir -p ~/amiorin/.config/fish
	cp config.fish ~/amiorin/.config/fish/config.fish

	mkdir -p ~/amiorin/.config/skhd
	cp skhdrc ~/amiorin/.config/skhd/skhdrc

	mkdir -p ~/amiorin/.config/wezterm
	cp wezterm.lua ~/amiorin/.config/wezterm/wezterm.lua

	mkdir -p ~/amiorin/.config/ghostty
	cp dotfiles/ghostty/config ~/amiorin/.config/ghostty/config

	mkdir -p ~/amiorin/.config/kitty
	cp dotfiles/kitty/kitty.conf ~/amiorin/.config/kitty/kitty.conf
	cp dotfiles/kitty/current-theme.conf ~/amiorin/.config/kitty/current-theme.conf

	mkdir -p ~/amiorin/.config/direnv
	cp direnv.toml ~/amiorin/.config/direnv/direnv.toml

	mkdir -p ~/amiorin/.config/atuin
	cp dotfiles/atuin/config.toml ~/amiorin/.config/atuin/config.toml

	cp dotfiles/starship/starship.toml ~/amiorin/.config/starship.toml

	mkdir -p ~/amiorin/.local/bin
	cp 24-bit-color.sh ~/amiorin/.local/bin/24-bit-color.sh

	cp dotfiles/aerospace/aerospace.toml ~/amiorin/.aerospace.toml

	cp dotfiles/bin/dev ~/amiorin/.local/bin/dev

	mkdir -p ~/amiorin/.config/zellij/layouts
	cp dotfiles/zellij/config.kdl ~/amiorin/.config/zellij/config.kdl
	cp dotfiles/zellij/layouts/minimal.kdl ~/amiorin/.config/zellij/layouts/minimal.kdl
