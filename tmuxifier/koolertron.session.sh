if initialize_session "koolertron"; then
  window_root "~/code/personal/happy"
  new_window "koolertron"
  run_cmd "n ~/.local/bin/kmonad.py"
  split_h 50 
  run_cmd "cargo watch -w ~/.local/bin/kmonad.py -- ~/.local/bin/kmonad.py"
  new_window
  run_cmd "lazygit --work-tree=$HOME --git-dir=$HOME/.dotfiles"
  new_window
  select_window 1
  select_pane 1
fi

finalize_and_go_to_session
