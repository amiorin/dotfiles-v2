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
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.hide_tab_bar_if_only_one_tab = true

config.enable_kitty_keyboard = true

-- For example, changing the color scheme:
--config.color_scheme = 'Batman'
-- Spawn a fish shell in login mode
config.default_prog = { '/opt/homebrew/bin/fish', '-l' }
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 16
config.keys = {
  {
    key = 'b', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'b', mods = '' },
    },
  },
  {
    key = 'x', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'x', mods = '' },
    },
  },
  {
    key = 'c', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'c', mods = '' },
    },
  },
  { key = 'f', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'f', mods = '' },
    },
  },
  { key = '1', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = '1', mods = '' },
    },
  },
  { key = '2', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = '2', mods = '' },
    },
  },
  { key = '3', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = '3', mods = '' },
    },
  },
  { key = '4', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = '4', mods = '' },
    },
  },
  { key = '5', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = '5', mods = '' },
    },
  },
  { key = '6', mods = 'CMD', action = act.ActivateTab(0) },
  { key = '7', mods = 'CMD', action = act.ActivateTab(1) },
  { key = '8', mods = 'CMD', action = act.ActivateTab(2) },
  { key = '9', mods = 'CMD', action = act.ActivateTab(3) },
  { key = '0', mods = 'CMD', action = act.ActivateTab(4) },
  {
    key = 'u', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'u', mods = '' },
    },
  },
  {
    key = 'z', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'c', mods = 'CTRL' },
      act.SendKey { key = 'z', mods = 'CTRL' },
    },
  },
  {
    key = 'PageUp',
    mods = 'CTRL|SHIFT',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = ',', mods = '' },
    },
  },
  {
    key = 'PageDown',
    mods = 'CTRL|SHIFT',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = '.', mods = '' },
    },
  },
  -- cmd + h is implememnted in skhd to override the hide of macos
  {
    key = 'j', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'w', mods = 'CTRL' },
      act.SendKey { key = 'j', mods = '' },
    },
  },
  {
    key = 'k', mods = 'CMD',
    action = act.Multiple   {
      act.SendKey { key = 'w', mods = 'CTRL' },
      act.SendKey { key = 'k', mods = '' },
    },
  },
  {
    key = 'l', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'w', mods = 'CTRL' },
      act.SendKey { key = 'l', mods = '' },
    },
  },
  { key = 'n', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'w', mods = 'CTRL' },
      act.SendKey { key = 'V', mods = '' },
    },
  },
  {
    key = 'd', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'w', mods = 'CTRL' },
      act.SendKey { key = 'd', mods = '' },
    },
  },
  {
    key = 'w', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'w', mods = 'CTRL' },
      act.SendKey { key = 'd', mods = '' },
    },
  },
  {
    key = 't', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'x', mods = 'CTRL' },
      act.SendKey { key = 't', mods = 'CTRL' },
    },
  },
  {
    key = 'h', mods = 'CMD|CTRL',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'h', mods = '' },
    },
  },
  {
    key = 'j', mods = 'CMD|CTRL',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'j', mods = '' },
    },
  },
  {
    key = 'k', mods = 'CMD|CTRL',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'k', mods = '' },
    },
  },
  {
    key = 'l', mods = 'CMD|CTRL',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'l', mods = '' },
    },
  },
  {
    key = 't', mods = 'CMD|CTRL',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 't', mods = '' },
    },
  },
  {
    key = 'w', mods = 'CMD|CTRL',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'w', mods = '' },
    },
  },
  {
    key = 'n', mods = 'CMD|CTRL',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'n', mods = '' },
    },
  },
  {
    key = 's', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'x', mods = 'CTRL' },
      act.SendKey { key = 's', mods = 'CTRL' },
    },
  },
  { key = 'e', mods = 'CMD',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'e', mods = '' },
    },
  },
  { key = 'i', mods = 'CMD|CTRL',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'i', mods = '' },
    },
  },
  { key = 'o', mods = 'CMD|CTRL',
    action = act.Multiple {
      act.SendKey { key = 'a', mods = 'CTRL' },
      act.SendKey { key = 'o', mods = '' },
    },
  },
  { key = '{', mods = 'CMD|SHIFT',
    action = act.Multiple {
      act.SendKey { key = 'w', mods = 'CTRL' },
      act.SendKey { key = 'r', mods = '' },
    },
  },
  { key = '}', mods = 'CMD|SHIFT',
    action = act.Multiple {
      act.SendKey { key = 'w', mods = 'CTRL' },
      act.SendKey { key = 'o', mods = 'CTRL' },
    },
  },
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  { key = 'm', mods = 'CMD', action = act.DisableDefaultAssignment },
  { key = 'w', mods = 'CMD|CTRL|SHIFT', action = act.CloseCurrentPane { confirm = false },},
  { key = 't', mods = 'CMD|CTRL|SHIFT', action = act.SpawnTab 'CurrentPaneDomain' },
  { key = 'n', mods = 'CMD|CTRL|SHIFT', action = act.SpawnWindow },
  { key = 'q', mods = 'CMD', action = act.QuitApplication },
  { key = 'p', mods = 'CMD|SHIFT', action = act.ActivateCommandPalette },
  { key = 'p', mods = 'CMD', action = act.ShowLauncher },
  { key = 'i', mods = 'CMD|CTRL|SHIFT', action = act.ActivateTabRelative(-1) },
  { key = 'o', mods = 'CMD|CTRL|SHIFT', action = act.ActivateTabRelative(1) },
  { key = 'v', mods = 'ALT', action = act.ShowLauncherArgs {flags = 'FUZZY|WORKSPACES' }},
  { key = 'Backspace', mods = 'CMD', action = act.ActivateCopyMode},
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
config.window_close_confirmation = 'NeverPrompt'
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
