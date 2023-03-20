local opt = vim.opt
local keymap = vim.keymap

opt.cursorline = true
opt.wrap = false
opt.relativenumber = true
opt.background = "dark"

-- Neotree key bindings
keymap.set("n", "<leader>fs", "<cmd>Neotree source=filesystem position=float<cr>", { desc = "Open filesystem" })
keymap.set("n", "<leader>gs", "<cmd>Neotree source=git_status position=float<cr>", { desc = "View git status" })
