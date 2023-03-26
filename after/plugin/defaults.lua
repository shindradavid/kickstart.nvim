local opt = vim.opt

opt.cursorline = true
opt.wrap = false
opt.relativenumber = true
opt.background = "dark"
opt.backup = false
opt.swapfile = false
opt.writebackup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.scrolloff = 6
opt.sidescrolloff = 8
opt.title = true
opt.titlestring = "%<%F%=%l/%L"

-- key maps

local keymap = vim.keymap

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("x", "<leader>p", "\"_dP")
