# list of all recipes
help:
    @just -f {{ justfile() }} --list --unsorted

# backup dotfiles
backup:
	cp ${TARGET}/.config/fish/config.fish config.fish
	cp ${TARGET}/.config/skhd/skhdrc skhdrc
	cp ${TARGET}/.local/bin/24-bit-color.sh 24-bit-color.sh
	cp ${TARGET}/.config/wezterm/wezterm.lua wezterm.lua
	cp ${TARGET}/.config/ghostty/config dotfiles/ghostty/config
	cp ${TARGET}/.config/kitty/kitty.conf dotfiles/kitty/kitty.conf
	cp ${TARGET}/.config/kitty/current-theme.conf dotfiles/kitty/current-theme.conf
	cp ${TARGET}/.config/direnv/direnv.toml direnv.toml
	cp ${TARGET}/.config/atuin/config.toml dotfiles/atuin/config.toml
	cp ${TARGET}/.config/starship.toml dotfiles/starship/starship.toml
	cp ${TARGET}/.aerospace.toml dotfiles/aerospace/aerospace.toml
	cp ${TARGET}/.local/bin/dev dotfiles/bin/dev
	cp ${TARGET}/.config/zellij/config.kdl dotfiles/zellij/config.kdl
	cp ${TARGET}/.config/zellij/layouts/minimal.kdl dotfiles/zellij/layouts/minimal.kdl
	rsync -a --delete ${TARGET}/.doom.d/ dotfiles/doomemacs/


# install dotfiles
install:
	mkdir -p ${TARGET}/.config/fish
	cp config.fish ${TARGET}/.config/fish/config.fish

	mkdir -p ${TARGET}/.config/skhd
	cp skhdrc ${TARGET}/.config/skhd/skhdrc

	mkdir -p ${TARGET}/.config/wezterm
	cp wezterm.lua ${TARGET}/.config/wezterm/wezterm.lua

	mkdir -p ${TARGET}/.config/ghostty
	cp dotfiles/ghostty/config ${TARGET}/.config/ghostty/config

	mkdir -p ${TARGET}/.config/kitty
	cp dotfiles/kitty/kitty.conf ${TARGET}/.config/kitty/kitty.conf
	cp dotfiles/kitty/current-theme.conf ${TARGET}/.config/kitty/current-theme.conf

	mkdir -p ${TARGET}/.config/direnv
	cp direnv.toml ${TARGET}/.config/direnv/direnv.toml

	mkdir -p ${TARGET}/.config/atuin
	cp dotfiles/atuin/config.toml ${TARGET}/.config/atuin/config.toml

	cp dotfiles/starship/starship.toml ${TARGET}/.config/starship.toml

	mkdir -p ${TARGET}/.local/bin
	cp 24-bit-color.sh ${TARGET}/.local/bin/24-bit-color.sh

	cp dotfiles/aerospace/aerospace.toml ${TARGET}/.aerospace.toml

	cp dotfiles/bin/dev ${TARGET}/.local/bin/dev

	mkdir -p ${TARGET}/.config/zellij/layouts
	cp dotfiles/zellij/config.kdl ${TARGET}/.config/zellij/config.kdl
	cp dotfiles/zellij/layouts/minimal.kdl ${TARGET}/.config/zellij/layouts/minimal.kdl

	mkdir -p ${TARGET}/.doom.d
	rsync -a dotfiles/doomemacs/ ~/.doom.d
