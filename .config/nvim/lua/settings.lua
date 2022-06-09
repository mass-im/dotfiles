
-- Default mappings
vim.g.mapleader = ','

-- Basic settings
vim.g.filetype = 'on'
vim.cmd('filetype plugin indent on') -- TODO < not sure if this is the way to go
vim.o.hidden = true -- when current bugger has unsaved changes,
-- and we switch buffer, hide file instead of closing it (https://medium.com/usevim/vim-101-set-hidden-f78800142855)
vim.o.confirm = true -- instead of failing a command because of unsaved changes, raise a dialogue
vim.o.mouse = 'a' -- enable mouse usage in all modes

-- Command mode
vim.o.wildmenu = true -- expand vim commands in command line on tab

-- Timeouts
vim.o.timeout = false
vim.o.ttimeout = true
vim.o.ttimeoutlen = 100

-- Display
vim.o.showmatch = true -- show matching brackets
vim.o.scrolloff = 3 -- show X rows from edge of screen
-- vim.o.synmaxcol = 300 -- limit syntax highlighting after X lines for performance

-- Sidebar
vim.o.number = true -- show line numbers

-- Command line / status bar
vim.o.modelines = 0 -- ignore vim modelines
vim.o.showmode = false -- dont display mode in command line (airline already does that)
vim.o.showcmd = false -- dont show last command
vim.o.laststatus = 2

-- Search
vim.o.incsearch = true -- start searching when typing, no enter needed
vim.o.ignorecase = true -- use case insensitive search
vim.o.smartcase = true -- , except when using capitals in search
vim.o.matchtime = 2 -- delay before showing matches

-- Whitespace
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 4 -- 1 tab = X spaces
vim.o.shiftwidth = 4 -- indentation rule
vim.o.expandtab = true -- expand tab to spaces

-- Backup files
vim.o.backup = false -- no backup file clutter
vim.o.swapfile = false -- ... no clutter

-- Airline
-- TODO can we wrap this in a try/catch block? If not, uncomment this on first startup
--vim.g.airline_extensions = {'branch', 'hunks', 'coc'} -- enable extensions
vim.g.airline_skip_empty_sections = 1 -- dont draw separators for empty sections
vim.g['airline#extensions#tabline#formatter'] = 'unique_tail' -- custom setup that removes filetype/whitespace from default airline
vim.g['airline#extensions#default#layout'] = {{'a', 'b', 'c'}, {'x', 'z', 'warning', 'error'}}
vim['airline#extensions#coc#stl_format_err'] = '%E{[%e(#%fe)]}'
vim['airline#extensions#coc#stl_format_warn'] = '%W{[%w(#%fw)]}'
-- Configure error/warning section to use coc.nvim
vim.g.airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
vim.g.airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
-- Disable vim-airline in preview mode
vim.g.airline_exclude_preview = 1
-- Enable powerline fonts
vim.g.airline_powerline_fonts = 1
-- Enable caching of syntax highlighting groups
vim.g.airline_highlighting_cache = 1
-- Don't show git changes to current file in airline
vim.g['airline#extensions#hunks#enabled'] = 0
-- Define custom airline symbols
if not vim.g.airline_symbols then
--    vim.g.airline_symbols = ''
end
-- Set our theme
vim.g.airline_theme = 'base16'

-- Telescope
require('telescope').setup{
    pickers = {
        find_files = {
            theme = 'ivy',
            previewer = false,
        },
        live_grep = {
            theme = 'ivy'
        },
        buffers = {
            theme = 'ivy',
            initial_mode = 'normal',
            previewer = false,
        }
    },
}

-- Echodoc
vim.g['echodoc#enable_at_startup'] = true

-- Signify
vim.g.signify_sign_delete = '-'

-- markdown
-- set markdown linewrapping
vim.cmd([[
augroup Markdown
    autocmd!
    autocmd FileType markdown setlocal textwidth=80
augroup END
]])

-- Colors and schemes
vim.o.termguicolors = true
vim.cmd('colorscheme OceanicNext')
