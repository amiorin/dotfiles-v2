#! /usr/bin/env bash

set -x

session=$(tmuxifier ls | fzf-tmux -p | xargs)
echo $session > ~/session.txt
if [[ -z $session ]]; then
  return 0
fi
tmuxifier load-session $session
tmux switch-client -t $session
