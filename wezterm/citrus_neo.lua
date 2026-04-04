-- Citrus Neo — WezTerm color scheme
-- Inspired by the MacBook Neo in Citrus
--
-- The Citrus finish is a warm yellow-gold aluminum with greenish undertones,
-- white keys tinted faintly yellow, and a greeny-yellowy-gold bezel.
-- This scheme captures that palette: earthy gold backgrounds, citrus accents,
-- clean high-contrast text, and ANSI colors that feel at home on the hardware.

local wezterm = require("wezterm")

local citrus_neo = wezterm.color.get_builtin_schemes()["Builtin Solarized Dark"] or {}

-- Override everything with our Citrus Neo palette
citrus_neo = {
  -- Background: deep warm charcoal with a faint golden undertone
  background = "#1a1a14",

  -- Foreground: warm off-white, like the tinted keys on the Citrus model
  foreground = "#f0ead6",

  -- Cursor
  cursor_bg = "#d4a017",
  cursor_fg = "#1a1a14",
  cursor_border = "#d4a017",

  -- Selection
  selection_bg = "#3d3a2e",
  selection_fg = "#f0ead6",

  -- Scrollbar thumb
  scrollbar_thumb = "#3d3a2e",

  -- Split (pane dividers)
  split = "#5c5631",

  -- Tab bar
  tab_bar = {
    background = "#13130e",
    active_tab = {
      bg_color = "#1a1a14",
      fg_color = "#d4a017",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#13130e",
      fg_color = "#8a8470",
    },
    inactive_tab_hover = {
      bg_color = "#252518",
      fg_color = "#c8b560",
    },
    new_tab = {
      bg_color = "#13130e",
      fg_color = "#8a8470",
    },
    new_tab_hover = {
      bg_color = "#252518",
      fg_color = "#d4a017",
    },
  },

  -- ANSI colors (normal)
  ansi = {
    "#2b2a22",  -- black:   dark olive-charcoal
    "#c75646",  -- red:     muted warm red
    "#8eb33b",  -- green:   citrus green (the key color)
    "#d4a017",  -- yellow:  golden citrus (the hero accent)
    "#6e98a4",  -- blue:    muted teal-blue complement
    "#a87eb7",  -- magenta: soft lavender
    "#5da58e",  -- cyan:    sage green
    "#c8c2a8",  -- white:   warm ivory
  },

  -- ANSI colors (bright)
  brights = {
    "#4a4838",  -- bright black:   lighter olive
    "#e09690",  -- bright red:     soft coral
    "#b5cc72",  -- bright green:   light lime-citrus
    "#f0d06e",  -- bright yellow:  bright lemon gold
    "#93bdc4",  -- bright blue:    lighter teal
    "#c4a8d1",  -- bright magenta: lighter lavender
    "#83c5ae",  -- bright cyan:    light mint-sage
    "#f0ead6",  -- bright white:   warm cream (matches fg)
  },
}

return {
  color_schemes = {
    ["Citrus Neo"] = citrus_neo,
  },
  color_scheme = "Citrus Neo",

  -- Optional: font and window settings that complement the theme
  -- Uncomment and adjust to taste:
  --
  -- font = wezterm.font("SF Mono", { weight = "Regular" }),
  -- font_size = 13.0,
  -- line_height = 1.15,
  -- window_background_opacity = 0.97,
  -- macos_window_background_blur = 20,
  -- window_decorations = "RESIZE",
  -- window_padding = { left = 12, right = 12, top = 8, bottom = 8 },
}
