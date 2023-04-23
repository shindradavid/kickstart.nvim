-- Fuzzy Finder (files, lsp, etc)
-- health    ->    :checkhealth telescope
-- help      ->    :help telescope
-- cmd       ->    :Telescope

return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local actions = require('telescope.actions')

    -- See `:help telescope` and `:help telescope.setup()`
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
            ['<C-k>'] = actions.move_selection_previous,
            ['<C-j>'] = actions.move_selection_next,
            ['<C-c>'] = actions.close,
            ['<C-h>'] = "which_key"
          },
        },
      },
    }

    local keymap = vim.keymap
    -- Enable telescope fzf native, if installed
    pcall(require('telescope').load_extension, 'fzf')

    local nmap = function(keys, func, desc)
      if desc then
        desc = 'Telescope: ' .. desc
      end

      vim.keymap.set('n', keys, func, { desc = desc })
    end

    -- See `:help telescope.builtin`
    keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
    keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
    keymap.set('n', '<leader>/', function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })

    nmap('<C-f>', require('telescope.builtin').live_grep, 'Find')

    nmap('<leader>ff', require('telescope.builtin').find_files, '[F]ind [F]iles')
    nmap('<leader>fb', require('telescope.builtin').buffers, '[F]ind [B]uffers')
    nmap('<leader>fh', require('telescope.builtin').help_tags, '[F]ind [H]elp')
    nmap('<leader>fw', require('telescope.builtin').grep_string, '[F]ind current [W]ord')
    nmap('<leader>lg', require('telescope.builtin').live_grep, '[L]ive [G]rep')
    nmap('<leader>wd', require('telescope.builtin').diagnostics, '[W]orkspace [D]iagnostics')
    nmap('<leader>gs', require('telescope.builtin').git_status, '[G]it [S]tatus')
  end
}
