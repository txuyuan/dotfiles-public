if !exists('g:loaded_telescope') | finish | endif


nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;g <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent> ;e <cmd>lua require('telescope').extensions.file_browser.file_browser()<cr>
nnoremap  <silent> ;o <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  extensions = {
    media_files = {
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg"
    }
  },
  defaults = {
    mappings = {
       ["i"] = {
        ["<A-c>"] = fb_actions.create,
        ["<A-r>"] = fb_actions.rename,
        ["<A-m>"] = fb_actions.move,
        ["<A-y>"] = fb_actions.copy,
        ["<A-d>"] = fb_actions.remove,
        ["<A-o>"] = fb_actions.open,
        ["<A-g>"] = fb_actions.goto_parent_dir,
        ["<A-e>"] = fb_actions.goto_home_dir,
        ["<A-w>"] = fb_actions.goto_cwd,
        ["<A-t>"] = fb_actions.change_cwd,
        ["<A-f>"] = fb_actions.toggle_browser,
        ["<A-h>"] = fb_actions.toggle_hidden,
        ["<A-s>"] = fb_actions.toggle_all,
      }, 
    },
  }
}

require("telescope").load_extension "file_browser"
require("telescope").load_extension "media_files"

EOF
