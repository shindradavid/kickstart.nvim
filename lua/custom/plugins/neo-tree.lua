return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local keymap = vim.keymap

    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    vim.cmd([[ let g:loaded_netrw = 1 ]])
    vim.cmd([[ let g:loaded_netrwPlugin = 1 ]])

    keymap.set("n", "<leader>fw", "<cmd>Neotree source=filesystem position=float<cr>", { desc = "Open files window" })
    keymap.set("n", "<leader>gs", "<cmd>Neotree source=git_status position=float<cr>", { desc = "View git status" })

    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules",
            ".git",
            ".svelte-kit"
          }
        }
      },
      window = {
        position = "float"
      }
    }
  end,
}
