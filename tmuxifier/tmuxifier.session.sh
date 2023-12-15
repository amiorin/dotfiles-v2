if initialize_session "tmuxifier"; then
  window_root "~/.tmux/plugins/tmuxifier/layouts"
  new_window
  run_cmd "n dotfiles.session.sh"
fi

finalize_and_go_to_session
