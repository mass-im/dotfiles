-- == Utils ==
-- Collection of functions for easier mapping

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = false })
end

function noremap(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function nnoremap(shortcut, command)
  noremap('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function inoremap(shortcut, command)
  noremap('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- Ctags
nnoremap('<f5>', ':!ctags -R<cr>')

-- == Plugins ==

-- == Telescope ==
local Telescope = require 'telescope.builtin'
nnoremap('<leader>t', '<cmd>Telescope find_files<cr>')
nnoremap('<leader>g', '<cmd>Telescope live_grep<cr>')
nnoremap(';', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>f', '<cmd>Telescope tags<cr>')

local actions = require("telescope.actions")
require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close
            }
        }
    }
}

-- TODO make this part of my workflow
-- nnoremap('', '<cmd>Telescope marks<cr>')

-- == COC ==
vim.cmd[[
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
]]
