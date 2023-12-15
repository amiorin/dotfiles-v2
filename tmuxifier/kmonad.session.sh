if initialize_session "kmonad"; then
  window_root "~/.config/kmonad"
  new_window "kmonad"
  run_cmd "n ."
  split_h 5 
  run_cmd "while true; sudo kmonad ~/.config/kmonad/mactron.kbd; sleep 3; end"
  split_v 50
  run_cmd "while true; sudo kmonad ~/.config/kmonad/koolertron.kbd; sleep 3; end"
  new_window
  run_cmd "lazygit --work-tree=$HOME --git-dir=$HOME/.dotfiles"
  new_window
  select_window 1
  select_pane 1
fi

finalize_and_go_to_session
