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
            ['<C-c>'] = actions.close
          },
        },
      },
    }

    local nmap = require('shindradavid.utils').nmap

    local keymap = vim.keymap
    -- Enable telescope fzf native, if installed
    pcall(require('telescope').load_extension, 'fzf')

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

    nmap('<leader>tff', require('telescope.builtin').find_files, '[T]elescope [F]ind [F]iles')
    nmap('<leader>tfb', require('telescope.builtin').buffers, '[T]elescope [F]ind [B]uffers')
    nmap('<leader>tfh', require('telescope.builtin').help_tags, '[T]elescope [F]ind [H]elp')
    nmap('<leader>tfw', require('telescope.builtin').grep_string, '[T]elescope [F]ind current [W]ord')
    nmap('<leader>tlg', require('telescope.builtin').live_grep, '[T]elescope [L]ive [G]rep')
    nmap('<leader>twd', require('telescope.builtin').diagnostics, '[T]elescope [W]orkspace [D]iagnostics')
    nmap('<leader>tgs', require('telescope.builtin').git_status, '[T]elescope [G]it [S]tatus')
  end
}
