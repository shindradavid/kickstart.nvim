local opt = vim.opt
local keymap = vim.keymap

opt.cursorline = true
opt.wrap = false
opt.relativenumber = true

keymap.set("n", "<leader>tw", "<cmd>Neotree source=filesystem position=float<cr>")
keymap.set("n", "<leader>gs", "<cmd>Neotree source=git_status position=float<cr>")
