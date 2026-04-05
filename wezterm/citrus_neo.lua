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
  -- Background: warm dark gold-brown, not black
  background = "#242112",

  -- Foreground: warm cream, like sun-bleached keys
  foreground = "#f2e8c9",

  -- Cursor: bright juicy gold
  cursor_bg = "#e8b312",
  cursor_fg = "#242112",
  cursor_border = "#e8b312",

  -- Selection: warm amber tint
  selection_bg = "#4a4225",
  selection_fg = "#f2e8c9",

  -- Scrollbar thumb
  scrollbar_thumb = "#4a4225",

  -- Split (pane dividers)
  split = "#6b6230",

  -- Tab bar
  tab_bar = {
    background = "#1b1908",
    active_tab = {
      bg_color = "#242112",
      fg_color = "#e8b312",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#1b1908",
      fg_color = "#9a8d60",
    },
    inactive_tab_hover = {
      bg_color = "#302c18",
      fg_color = "#d4b840",
    },
    new_tab = {
      bg_color = "#1b1908",
      fg_color = "#9a8d60",
    },
    new_tab_hover = {
      bg_color = "#302c18",
      fg_color = "#e8b312",
    },
  },

  -- ANSI colors (normal)
  ansi = {
    "#352f1e",  -- black:   warm dark olive
    "#d45a3a",  -- red:     blood orange
    "#a0c428",  -- green:   lime zest
    "#e8b312",  -- yellow:  ripe citrus gold (hero accent)
    "#5a9eaf",  -- blue:    muted teal complement
    "#b87ec7",  -- magenta: warm lavender
    "#54b88a",  -- cyan:    key lime
    "#d8cfaa",  -- white:   warm parchment
  },

  -- ANSI colors (bright)
  brights = {
    "#564e35",  -- bright black:   golden olive
    "#f08060",  -- bright red:     tangerine
    "#c4e254",  -- bright green:   electric lime
    "#ffd044",  -- bright yellow:  lemon burst
    "#7ec0d0",  -- bright blue:    light teal
    "#d4a2e0",  -- bright magenta: light orchid
    "#78daa8",  -- bright cyan:    bright mint-lime
    "#f2e8c9",  -- bright white:   warm cream (matches fg)
  },
}

return {
  color_schemes = {
    ["Citrus Neo"] = citrus_neo,
  },
  color_scheme = "Citrus Neo",
}
