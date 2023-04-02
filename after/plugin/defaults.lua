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

keymap.set("x", "<leader>p", "\"_dP")
