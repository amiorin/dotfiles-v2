if initialize_session "notes"; then
  window_root "~/code/personal/notes"
  new_window
  run_cmd "n .zshrc"
fi

finalize_and_go_to_session
