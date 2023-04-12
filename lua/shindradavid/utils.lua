local utils = {}

function utils.nmap(keys, func, desc)
  vim.keymap.set('n', keys, func, { desc = desc })
end

function utils.vmap(keys, func, desc)
  vim.keymap.set('v', keys, func, { desc = desc })
end

return utils
