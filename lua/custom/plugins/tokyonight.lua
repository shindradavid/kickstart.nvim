return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup {
      style = "night",
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        floats = "dark"
      },
      lualine_bold = true
    }
  end,
}
