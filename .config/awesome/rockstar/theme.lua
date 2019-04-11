---------------------------
-- Default awesome theme --
---------------------------

local gruvbox          = {}
gruvbox.dark           = {}
gruvbox.light          = {}

-- gruvbox dark

gruvbox.dark.dark_red       = "#cc241d" -- 1
gruvbox.dark.dark_green     = "#98971a" -- 2
gruvbox.dark.dark_yellow    = "#d79921" -- 3
gruvbox.dark.dark_blue      = "#458588" -- 4
gruvbox.dark.dark_purple    = "#b16286" -- 5
gruvbox.dark.dark_aqua      = "#689d6a" -- 6
gruvbox.dark.light_gray     = "#a89984" -- 7
gruvbox.dark.dark_gray      = "#928374" -- 8
gruvbox.dark.light_red      = "#fb4934" -- 9
gruvbox.dark.light_green    = "#b8bb26" -- 10
gruvbox.dark.light_yellow   = "#fabd2f" -- 11
gruvbox.dark.light_blue     = "#83a598" -- 12
gruvbox.dark.light_purple   = "#d3869b" -- 13
gruvbox.dark.light_aqua     = "#8ec07c" -- 14

gruvbox.dark.dark_orange    = "#d65d0e"
gruvbox.dark.light_orange   = "#fe8019"

gruvbox.dark.fg0            = "#fbf1c7"
gruvbox.dark.fg1            = "#ebdbb2"
gruvbox.dark.fg2            = "#d5c4a1"
gruvbox.dark.fg3            = "#bdae93"
gruvbox.dark.fg4            = "#a89984"
gruvbox.dark.fg             = gruvbox.dark.fg1 -- 15

gruvbox.dark.bg0            = "#282828"
gruvbox.dark.bg0_h          = "#1d2021"
gruvbox.dark.bg0_s          = "#32302f"
gruvbox.dark.bg1            = "#3c3836"
gruvbox.dark.bg2            = "#504945"
gruvbox.dark.bg3            = "#665c54"
gruvbox.dark.bg4            = "#7c6f64"
gruvbox.dark.bg             = gruvbox.dark.bg0 -- 0

-- gruvbox light

gruvbox.light.dark_red       = "#cc241d" -- 1
gruvbox.light.dark_green     = "#98971a" -- 2
gruvbox.light.dark_yellow    = "#d79921" -- 3
gruvbox.light.dark_blue      = "#458588" -- 4
gruvbox.light.dark_purple    = "#b16286" -- 5
gruvbox.light.dark_aqua      = "#689d6a" -- 6
gruvbox.light.light_gray     = "#7c6f64" -- 7
gruvbox.light.dark_gray      = "#928374" -- 8
gruvbox.light.light_red      = "#9d0006" -- 9
gruvbox.light.light_green    = "#79740e" -- 10
gruvbox.light.light_yellow   = "#b57614" -- 11
gruvbox.light.light_blue     = "#076678" -- 12
gruvbox.light.light_purple   = "#8f3f71" -- 13
gruvbox.light.light_aqua     = "#427b58" -- 14

gruvbox.light.dark_orange    = "#d65d0e"
gruvbox.light.light_orange   = "#af3a03"

gruvbox.light.fg0            = "#282828"
gruvbox.light.fg1            = "#3c3836"
gruvbox.light.fg2            = "#504945"
gruvbox.light.fg3            = "#665c54"
gruvbox.light.fg4            = "#7c6f64"
gruvbox.light.fg             = gruvbox.light.fg1 -- 15

gruvbox.light.bg0            = "#fbf1c7"
gruvbox.light.bg0_h          = "#f9f5d7"
gruvbox.light.bg0_s          = "#f2e5bc"
gruvbox.light.bg1            = "#ebdbb2"
gruvbox.light.bg2            = "#d5c4a1"
gruvbox.light.bg3            = "#bdae93"
gruvbox.light.bg4            = "#a89984"
gruvbox.light.bg             = gruvbox.light.bg0 -- 0

local theme            = {}
theme.confdir          = os.getenv("HOME") .. "/.config/awesome/rockstar/"

theme.wallpaper        = theme.confdir .. "/background.png"
theme.font             = "terminus 8"

theme.bg_normal        = gruvbox.dark.bg0_h
theme.bg_focus         = gruvbox.dark.dark_blue
theme.bg_urgent        = gruvbox.dark.dark_red
theme.bg_minimize      = gruvbox.dark.bg2
theme.bg_systray       = theme.bg_normal

theme.fg_normal        = gruvbox.dark.fg4
theme.fg_focus         = gruvbox.dark.bg0_h
theme.fg_urgent        = gruvbox.dark.fg1
theme.fg_minimize      = theme.fg_normal

theme.useless_gap      = 5
theme.border_width     = 1
theme.border_normal    = gruvbox.dark.bg0_h
theme.border_focus     = theme.bg_focus
theme.border_marked    = gruvbox.dark.light_aqua

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = theme.confdir .. "taglist/squaref.png"
theme.taglist_squares_unsel = theme.confdir .. "taglist/square.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.confdir .. "submenu.png"
theme.menu_height = 14
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal              = theme.confdir .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.confdir .. "titlebar/close_focus.png"

theme.titlebar_minimize_button_normal           = theme.confdir .. "titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.confdir .. "titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive     = theme.confdir .. "titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.confdir .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.confdir .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.confdir .. "titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = theme.confdir .. "titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.confdir .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.confdir .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.confdir .. "titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = theme.confdir .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.confdir .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.confdir .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.confdir .. "titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.confdir .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.confdir .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.confdir .. "titlebar/maximized_focus_active.png"

-- You can use your own layout icons like this:
theme.layout_fairh      = theme.confdir .. "layouts/fairh.png"
theme.layout_fairv      = theme.confdir .. "layouts/fairv.png"
theme.layout_floating   = theme.confdir .. "layouts/floating.png"
theme.layout_magnifier  = theme.confdir .. "layouts/magnifier.png"
theme.layout_max        = theme.confdir .. "layouts/max.png"
theme.layout_fullscreen = theme.confdir .. "layouts/fullscreen.png"
theme.layout_tilebottom = theme.confdir .. "layouts/tilebottom.png"
theme.layout_tileleft   = theme.confdir .. "layouts/tileleft.png"
theme.layout_tile       = theme.confdir .. "layouts/tile.png"
theme.layout_tiletop    = theme.confdir .. "layouts/tiletop.png"
theme.layout_spiral     = theme.confdir .. "layouts/spiral.png"
theme.layout_dwindle    = theme.confdir .. "layouts/dwindle.png"
theme.layout_cornernw   = theme.confdir .. "layouts/cornernw.png"
theme.layout_cornerne   = theme.confdir .. "layouts/cornerne.png"
theme.layout_cornersw   = theme.confdir .. "layouts/cornersw.png"
theme.layout_cornerse   = theme.confdir .. "layouts/cornerse.png"

theme.awesome_icon = theme.confdir .. "ninja.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
