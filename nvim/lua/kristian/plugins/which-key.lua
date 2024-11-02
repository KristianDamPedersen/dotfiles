-- Pop up for key bindings
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500 -- Set timeot length to 500ms
  end,
  opts = {
    -- Add options here to customize which key behaviour
  },
}
