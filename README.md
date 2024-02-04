# Video
* My endgame 2023. https://www.youtube.com/watch?v=8qOSunEy3jU

# Other apps

``` sh
brew install --cask spaceid
brew install --cask keycastr
brew install --cask raycast
brew install --cask monitorcontrol
```

# WezTerm and Zellij prev and next tab
https://github.com/wez/wezterm/issues/4251#issuecomment-1718239499

# Accents
https://apple.stackexchange.com/a/332770

# Script
* RSI and small keyboards
* https://peppe.rs/posts/programming_on_34_keys/
* https://precondition.github.io/home-row-mods
* https://keymapdb.com/keymaps/callum_oakley/
* https://karabiner-elements.pqrs.org/
* https://github.com/kmonad/kmonad
* https://www.amazon.com/Koolertron-Portable-Programmable-Mechanical-Backlight/dp/B0C14KGKQW?th=1
* https://monkeytype.com/ 
* https://www.reddit.com/r/mechmarket/comments/15kjtnf/euse_h_dz60_five_degree_case_kyria_rev_14_382_key/
  * 20 gr
* VIAL
* yabai and ferris sweep
* the journey
  * home row mods
  * combo


# My config files
* https://github.com/wez/wezterm
* https://fishshell.com/
* https://github.com/koekeishiya/yabai
* https://github.com/koekeishiya/skhd
* https://github.com/tmux/tmux

# TODO
* Add raycast
* Add applescript to start alacritty with raycast
* Add homerow
* Add MonitorControl
* Add SpaceId
* Add https://github.com/amiorin/happy-yabai

```sh
# editing mode
micromamba env create -f environment.yml --prefix ./.conda
fish_add_path .conda/bin/
pip install pywatchman
watchman-make -p '**' -t install

# check drift
make status

# install changes
make install
```
