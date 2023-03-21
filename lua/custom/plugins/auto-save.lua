return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup {
      execution_message = {
        message = function() -- message to print on save
          return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,                       -- dim the color of `message`
        cleaning_interval = 4000,         -- (milliseconds) auto clean MsgArea after displaying `message`. See :h MsgArea
      },
      trigger_events = { "InsertLeave" }, -- vim events that trigger auto-save. See :h events
    }
  end
}
