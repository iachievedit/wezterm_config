local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local citrus = require("citrus_neo")
for name, scheme in pairs(citrus.color_schemes) do
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = scheme
end
config.color_scheme = "Citrus Neo"
 
config.enable_tab_bar = false
config.enable_scroll_bar = true
config.color_scheme = "Citrus Neo"
config.font = wezterm.font "Fira Code"
config.automatically_reload_config = true
config.initial_rows = 24
config.initial_cols = 86

return config
