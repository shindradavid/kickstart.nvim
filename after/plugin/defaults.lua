local opt = vim.opt
local keymap = vim.keymap

opt.cursorline = true

keymap.set("n", "<leader>tw", "<cmd>Neotree position=float<cr>")
