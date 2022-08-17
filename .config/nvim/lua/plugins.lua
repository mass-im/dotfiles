-- Include helper script for easier usage of Plug
local Plug = require 'usermod.vimplug'

Plug.begin('~/.config/nvim/plugged')

-- == Syntax highlighting ==
Plug 'chr4/nginx.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pearofducks/ansible-vim'
Plug 'stephpy/vim-yaml'

-- == Editing and Navigating ==
Plug 'rstacruz/vim-closer' -- auto-close stuff
Plug 'easymotion/vim-easymotion' -- TODO am I even using this?
Plug 'christoomey/vim-tmux-navigator' -- Tmux/Neovim movement integration
Plug 'Shougo/echodoc.vim' -- Show function signature in command/echo area
Plug 'nvim-lua/plenary.nvim' -- Lua functions used by Telescope ('all the functions you dont want to write twice')
Plug 'nvim-telescope/telescope.nvim'

-- == ctags ==
Plug 'ternjs/tern_for_vim'
Plug 'preservim/tagbar'

-- Both Telescope and markdown-preview use 'do' which I didnt write support for yet in the Plug helper methods
vim.cmd[[
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
]]

Plug('neoclide/coc.nvim', {branch = 'release'})

-- == GIT ==
Plug 'mhinz/vim-signify' -- Indicates changes lines in sign column
Plug 'tpope/vim-fugitive' -- GIT features from within VIM

-- == UI ==
Plug 'mhartington/oceanic-next' -- Colorscheme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

Plug.ends()
