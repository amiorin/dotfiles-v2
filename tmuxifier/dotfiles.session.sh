if initialize_session "dotfiles"; then
  window_root "~"
  new_window "dotfiles"
  run_cmd "n .config/fish/config.fish"
fi

finalize_and_go_to_session
