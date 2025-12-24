local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local rio = util.template(
    [[
[colors]
background = "${bg}"
foreground = "${fg}"

# Selection
selection-background = "${bg_visual}"
selection-foreground = "${fg}"

# Navigation
-- tabs-active = ""
tabs-active-foreground = "${bg_dark}"
tabs-active-highlight = "${bg_highlight}"
-- bar = ""
-- split = ""
-- cursor = ""
-- vi-cursor = ""
--
-- # Search
-- search-match-background = ""
-- search-match-foreground = ""
-- search-focused-match-background = ""
-- search-focused-match-foreground = ""
--
# Regular colors
black = "${terminal.black}"
blue = "${terminal.blue}"
cyan = "${terminal.cyan}"
green = "${terminal.green}"
magenta = "${terminal.magenta}"
red = "${terminal.red}"
-- tabs = ""
white = "${terminal.white}"
yellow = "${terminal.yellow}"
--
-- # Dim colors
-- dim-black = ""
-- dim-blue = ""
-- dim-cyan = ""
-- dim-foreground = ""
-- dim-green = ""
-- dim-magenta = ""
-- dim-red = ""
-- dim-white = ""
-- dim-yellow = ""
--
-- # Light colors
-- light-black = ""
-- light-blue = ""
-- light-cyan = ""
-- light-foreground = ""
-- light-green = ""
-- light-magenta = ""
-- light-red = ""
-- light-white = ""
-- light-yellow = ""
]],
    colors
  )
  return rio
end

return M
