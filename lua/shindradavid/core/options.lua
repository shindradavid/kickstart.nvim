--[[

=====================================================================
============================= OPTIONS ===============================
=====================================================================

--]]
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- :help vim.o
-- :help vim.opt
local opt = vim.opt

opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience

opt.clipboard = 'unnamedplus'        -- sync clipboard btwn OS and neovim.  See `:help 'clipboard'`

opt.signcolumn = 'yes'

-- cursor
opt.guicursor = ""
opt.cursorline = true

opt.mouse = 'a'

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs and indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.expandtab = true

opt.wrap = false

-- appearance
opt.termguicolors = true
opt.background = "dark"
vim.wo.signcolumn = 'yes' -- keep signcolumn on by default

-- backspace
opt.backspace = 'indent,eol,start'

-- search
opt.hlsearch = false
opt.smartcase = true
opt.ignorecase = true -- case insensitive searching unless /C or capital in search
opt.smartcase = true

-- backup and undo
opt.backup = false
opt.swapfile = false
opt.writebackup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.scrolloff = 6
opt.sidescrolloff = 8
vim.wrap = 'off'
vim.o.scrolloff = 8
vim.o.sidescroll = 8

opt.title = true
opt.titlestring = "%<%F%=%l/%L"

-- Decrease update time
opt.updatetime = 250
opt.timeout = true
opt.timeoutlen = 300
