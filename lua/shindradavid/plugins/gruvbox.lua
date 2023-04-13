return {
  "ellisonleao/gruvbox.nvim",
  config = function()
    require("gruvbox").setup {
      contrast = "soft"
    }

    vim.cmd([[ colorscheme gruvbox ]])
  end
}
