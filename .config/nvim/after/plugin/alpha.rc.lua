require'alpha'.setup(
  require'alpha.themes.dashboard'.config
)

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    "", "", "", 
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
    "", "",
}

dashboard.section.buttons.val = {
  dashboard.button( "n", "    > New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button( "f", "    > Find file", ":Telescope find_files<CR>" ),
  dashboard.button( "e", "    > Browse files", ":Telescope file_browser<CR>" ),
  dashboard.button( "d", "    > Manage files", "Defx -listed -resume -columns=indent:mark:icon:icons:filename:git:size -buffer-name=tab`tabpagenr()` `expand('%:p:h')` -search=`expand('%:p')`<CR>" ),
  dashboard.button( "o", "    > Old files", ":Telescope oldfiles<CR>" ),
  dashboard.button( "g", "    > Live grep", ":Telescope live_grep<CR>" ),
  dashboard.button( "q", "    > Quit NVim", ":qa<CR>" ),
}

alpha.setup(dashboard.opts)

vim.cmd([[
  autocmd FileType alpha setlocal nofoldenable
]])
