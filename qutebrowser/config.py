# import pywalQute.draw

# removing errors below
config = config
c = c

config.load_autoconfig(False)

c.url.searchengines = {
    "DEFAULT":  "https://search.fabianspecht.xyz?q={}",
}

c.url.start_pages = ["https://search.fabianspecht.xyz"]

c.auto_save.session = True
c.session.lazy_restore = True

c.tabs.background = True
c.tabs.select_on_remove = "prev"
c.tabs.new_position.unrelated = "next"
c.tabs.min_width = 150
c.tabs.position = "bottom"

c.content.notifications.enabled = False

c.statusbar.position = "top"

c.editor.command = ["alacritty", "-e", "nvim", "{}"]
c.downloads.location.directory = "~/downloads"

font = "11pt Terminess Nerd Font"

c.hints.border = font
c.fonts.hints = font
c.fonts.statusbar = font
c.fonts.downloads = font
c.fonts.contextmenu = font
c.fonts.tabs.selected = font
c.fonts.tabs.unselected = font
c.fonts.completion.entry =  font
c.fonts.completion.category = font

# mappings
config.bind('<Ctrl-j>', 'tab-next', mode='command')
config.bind('X', 'hint links spawn mpv {hint-url}', mode='normal')
config.bind('<Ctrl-V>', 'mode-leave', mode='passthrough')
config.bind('<Esc>', 'mode-leave', mode='passthrough')

# pywalQute.draw.color(c, {
#     'spacing': {
#         'vertical': 1,
#         'horizontal': 1
#     }
# })

c.tabs.indicator.width = 4
c.tabs.favicons.scale = 1

c.colors.completion.category.bg = "#333333"
c.colors.completion.even.bg = "#444444"
c.colors.completion.odd.bg = "#444444"

c.colors.completion.category.border.bottom = "#000000"
c.colors.completion.category.border.top = "#000000"
