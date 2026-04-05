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
config.font = wezterm.font_with_fallback {
  "GeistMono",
  "Hack",
  "Fira Code",
}
config.automatically_reload_config = true
config.initial_rows = 24
config.initial_cols = 86

config.window_background_opacity = 0.85
config.macos_window_background_blur = 20

return config
