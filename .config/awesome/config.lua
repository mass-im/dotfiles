local module = {}


-- [ default applications ] ----------------------------------------------------
module.browser = "firefox"
module.terminal = "x-terminal-emulator"

-- [ appearance ] --------------------------------------------------------------
-- Load color schemes from xresources
module.xresources = false

-- color scheme to use, choose from: light, mirage, dark
module.color_scheme = 'mirage'

-- path to your wallpaper
-- module.wallpaper = ''

-- [ widgets ] -----------------------------------------------------------------
-- disable desktop widget
-- module.desktop_widgets = false

-- widgets to be added to wibar
module.wibar_widgets = {
 	'vol',
 	'mem',
 	'cpu',
 	'fs',
	'datetime'
}

-- widgets to be added to the desktop pop up
module.arc_widgets = {'cpu', 'mem', 'fs'}

-- configure widgets
module.widgets_arg = {
}

-- [ miscellaneous ] -----------------------------------------------------------
-- Using Tyrannical tag managment engine
module.tyrannical = false

return module
