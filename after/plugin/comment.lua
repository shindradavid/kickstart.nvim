local api = require('Comment.api')

vim.keymap.set('n', '<leader>cl', api.toggle.linewise.current)
vim.keymap.set('n', '<leader>cb', api.toggle.blockwise.current)

local esc = vim.api.nvim_replace_termcodes(
  '<ESC>', true, false, true
)

-- Toggle selection (linewise)
vim.keymap.set('x', '<leader>cl', function()
  vim.api.nvim_feedkeys(esc, 'nx', false)
  api.toggle.linewise(vim.fn.visualmode())
end)

-- Toggle selection (blockwise)
vim.keymap.set('x', '<leader>cb', function()
  vim.api.nvim_feedkeys(esc, 'nx', false)
  api.toggle.blockwise(vim.fn.visualmode())
end)
