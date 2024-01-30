-- https://hackernoon.com/get-the-most-out-of-your-terminal-a-comprehensive-guide-to-wezterm-configuration
-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- local mux = wezterm.mux
local act = wezterm.action

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = 'Batman'
-- Spawn a fish shell in login mode
config.default_prog = { '/opt/homebrew/bin/fish', '-l' }
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 20
config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'm',
    mods = 'CMD',
    action = act.DisableDefaultAssignment,
  },
  {
    key = 'd',
    mods = 'CMD',
    action = act.SplitPane {
      direction = 'Left'
    },
  },
  {
    key = 'd',
    mods = 'CTRL|CMD',
    action = act.SplitPane {
      direction = 'Up'
    },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = act.CloseCurrentPane { confirm = false },
  },
  {
    key = 'q',
    mods = 'CMD',
    action = act.QuitApplication,
  },
  {
    key = 'k',
    mods = 'CMD',
    action = act.Multiple {
      act.ClearScrollback 'ScrollbackAndViewport',
      act.SendKey { key = 'L', mods = 'CTRL' },
    },
  },
  {
    key = 'p',
    mods = 'CMD|SHIFT',
    action = act.ActivateCommandPalette,
  },
  {
    key = 'p',
    mods = 'CMD',
    action = act.ShowLauncher,
  },
  {
    key = '[',
    mods = 'CMD',
    action = act.SwitchWorkspaceRelative(1)
  },
  {
    key = ']',
    mods = 'CMD',
    action = act.SwitchWorkspaceRelative(-1)
  },
  {
    key = 'v',
    mods = 'ALT',
    action = act.ShowLauncherArgs {
      flags = 'FUZZY|WORKSPACES',
    },
  },
  {
    key = 'Backspace',
    mods = 'CMD',
    action = act.ActivateCopyMode
  },
}
config.key_tables = {
  search_mode = {
    { key = 'Enter',  mods = 'NONE',      action = act.CopyMode 'PriorMatch' },
    { key = 'Escape', mods = 'NONE',      action = act.CopyMode 'Close' },
    { key = 'r',      mods = 'CTRL',      action = act.CopyMode 'CycleMatchType' },
    { key = 'u',      mods = 'CTRL',      action = act.CopyMode 'ClearPattern' },
    { key = 'g',      mods = 'CMD|SHIFT', action = act.CopyMode 'PriorMatch' },
    { key = 'g',      mods = 'CMD',       action = act.CopyMode 'NextMatch' },
  },
}
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "RESIZE"
config.color_scheme = 'Afterglow'
config.unix_domains = {
  {
    name = 'unix',
  }
}
config.window_close_confirmation = 'NeverPrompt'
config.default_gui_startup_args = { 'connect', 'unix' }
config.command_palette_font_size = 18.0
config.quit_when_all_windows_are_closed = false

wezterm.on('mux-is-process-stateful', function(proc)
  _ = proc
  return nil
end)

wezterm.on('format-tab-title', function(tab)
  local pane = tab.active_pane
  local title = pane.title
  if pane.domain_name then
    title = title .. ' - (' .. pane.domain_name .. ')'
  end
  return title
end)

wezterm.on('update-status', function(window, pane)
  _ = pane
  window:set_right_status(window:active_workspace() .. '  ')
end)

-- and finally, return the configuration to wezterm
return config
