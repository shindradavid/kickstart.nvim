--[[

=====================================================================
============================= KEYMAPS ===============================
=====================================================================

--]]
local keymap = vim.keymap

keymap.set('i', '<C-j>', '<Down>')
keymap.set('i', '<C-k>', '<Up>')
keymap.set('i', '<C-h>', '<Left>')
keymap.set('i', '<C-l>', '<Right>')

keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save file' })
keymap.set('n', '<C-c>', '<cmd>%y+<CR>', { desc = 'Copy the whole file' })

keymap.set('n', 'x', '"_x') -- delete without saving to register

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

keymap.set("v", "j", ":m '>+1<CR>gv=gv")
keymap.set("v", "k", ":m '<-2<CR>gv=gv")

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- keymap.set('n', 'C-/', require('Comment.api').toggle.linewise.current())
