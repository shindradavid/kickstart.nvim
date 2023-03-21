local opt = vim.opt
local keymap = vim.keymap

opt.cursorline = true
opt.wrap = false
opt.relativenumber = true
opt.background = "dark"

vim.cmd([[colorscheme tokyonight]])

-- Neotree key bindings
keymap.set("n", "<leader>fs", "<cmd>Neotree source=filesystem position=float<cr>", { desc = "Open filesystem" })
keymap.set("n", "<leader>gs", "<cmd>Neotree source=git_status position=float<cr>", { desc = "View git status" })

-- Trouble key bindings
-- Lua
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
	{ silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
	{ silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
	{ silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
	{ silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
	{ silent = true, noremap = true }
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
	{ silent = true, noremap = true }
)
