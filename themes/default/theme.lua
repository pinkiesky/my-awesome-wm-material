---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local shape = require("gears").shape
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.icons = os.getenv("HOME") .. "/.config/awesome/themes/default/icons/"

local materialColor = {
    primary = "#BEBEBE",
    primaryLight = "#E9E9E9",
    secondary = "#252525",
    secondaryLight = "#585858",
    urgent = "#581102",
    bg = "#FFFAFA",
}

theme.font          = "Roboto Condensed 9"

theme.bg_normal = materialColor.bg
theme.bg_focus = materialColor.primary
theme.bg_urgent = materialColor.urgent
theme.bg_minimize = materialColor.secondaryLight
theme.bg_systray = theme.bg_normal

theme.fg_normal     = "#350701"
-- theme.fg_focus      = "#ffffff"
-- theme.fg_urgent     = "#ffffff"
-- theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(1)
theme.border_width  = dpi(3)
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_focus
theme.border_marked = materialColor.urgent

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

theme.tasklist_disable_icon = true
theme.tasklist_disable_task_name = false

local line = function(lineHeight)
    return function(cr, width, height)
        shape.transform(shape.rectangle) 
            : translate(0, 0)(cr, width, lineHeight or height)
    end
end

-- theme.tasklist_
local defaultLineHeight = 4
theme.tasklist_shape = line(defaultLineHeight)
theme.tasklist_bg_normal = materialColor.primary
theme.tasklist_shape_focus = line(false)
theme.tasklist_fg_focus = 'white'
theme.tasklist_shape_minimized = line(defaultLineHeight / 2)
theme.tasklist_shape_urgent = line(defaultLineHeight * 2)

theme.tasklist_spacing = dpi(1)
theme.tasklist_align = 'center'

theme.taglist_bg_occupied = materialColor.primaryLight
theme.taglist_bg_focus = materialColor.primary
theme.taglist_fg_focus = '#ffffff'
theme.taglist_bg_empty = theme.bg_normal

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."default/titlebar/maximized_focus_active.png"

theme.wallpaper = "/home/rglr/.config/awesome/themes/default/cargirl.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."default/layouts/fairh.png"
theme.layout_fairv = themes_path.."default/layouts/fairv.png"
theme.layout_floating  = themes_path.."default/layouts/floating.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifier.png"
theme.layout_max = themes_path.."default/layouts/max.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreen.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottom.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleft.png"
theme.layout_tile = themes_path.."default/layouts/tile.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletop.png"
theme.layout_spiral  = themes_path.."default/layouts/spiral.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindle.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernw.png"
theme.layout_cornerne = themes_path.."default/layouts/cornerne.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersw.png"
theme.layout_cornerse = themes_path.."default/layouts/cornerse.png"

theme.wibar_border_width = 2
theme.wibar_border_color = theme.bg_normal
theme.wibar_height = dpi(25)
-- theme.wibar_ = 

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
