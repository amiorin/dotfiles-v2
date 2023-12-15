if initialize_session "hammerspoon"; then
  window_root "~/.hammerspoon"
  new_window "phoenix"
  run_cmd "n init.lua"
  split_h 50
  split_v 20
  new_window
  run_cmd "lazygit --work-tree=$HOME --git-dir=$HOME/.dotfiles"
  select_window 1
  select_pane 1
fi

finalize_and_go_to_session
