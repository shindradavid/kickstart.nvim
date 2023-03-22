return {
  "folke/tokyonight.nvim",
  config = function()
    vim.cmd([[colorscheme tokyonight]])

    require("tokyonight").setup {
      style = "moon",
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        floats = "storm"
      },
      lualine_bold = true
    }
  end,
}
