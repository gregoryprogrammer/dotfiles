----------------------------
-- Rockstar awesome theme --
----------------------------

local colors            = {}
colors.dark_red         = "#cc241d" --  1
colors.dark_green       = "#98971a" --  2
colors.dark_yellow      = "#d79921" --  3
colors.dark_blue        = "#458588" --  4
colors.dark_purple      = "#b16286" --  5
colors.dark_aqua        = "#689d6a" --  6
colors.light_gray       = "#a89984" --  7
colors.dark_gray        = "#928374" --  8
colors.light_red        = "#fb4934" --  9
colors.light_green      = "#b8bb26" -- 10
colors.light_yellow     = "#feb101" -- 11
colors.light_blue       = "#83a598" -- 12
colors.light_purple     = "#d3869b" -- 13
colors.light_aqua       = "#8ec07c" -- 14
colors.dark_orange      = "#d65d0e"
colors.light_orange     = "#fe8019"
colors.fg1              = "#ebdbb2"
colors.fg2              = "#a89984"
colors.bg1              = "#1d2021"
colors.bg2              = "#504945"

local theme             = {}
theme.confdir           = os.getenv("HOME") .. "/.config/awesome/rockstar/"

theme.wallpaper         = theme.confdir .. "/background.png"
theme.font              = "terminus 8"

theme.bg_normal         = colors.bg1
theme.bg_focus          = colors.light_yellow
theme.bg_urgent         = colors.dark_red
theme.bg_minimize       = colors.bg2
theme.bg_systray        = theme.bg_normal

theme.fg_normal         = colors.fg2
theme.fg_focus          = colors.bg1
theme.fg_urgent         = colors.fg1
theme.fg_minimize       = theme.fg_normal

theme.useless_gap       = 5
theme.border_width      = 1
theme.border_normal     = colors.bg1
theme.border_focus      = theme.bg_focus
theme.border_marked     = colors.light_aqua

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
