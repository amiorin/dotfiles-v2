if initialize_session "phoenix"; then
  window_root "~/code/personal/phoenix"
  new_window "phoenix"
  run_cmd "y README.md"
  split_h 50
  run_cmd "log stream --process Phoenix"
  split_v 20
  new_window
  run_cmd "lazygit --work-tree=$HOME --git-dir=$HOME/.dotfiles"
  select_window 1
  select_pane 1
fi

finalize_and_go_to_session
