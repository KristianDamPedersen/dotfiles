-- Pretty sideba for all the trouble your code is making ;)
-- return {
--   "folke/trouble.nvim",
--   cmd = "Trouble",
--   dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
--   keys = {
--     { "<leader>xx", "<cmd>Trouble toggle<CR>", desc = "Open / close trouble list" },
--     { "<leader>xw", "<cmd>Trouble diagnostics toggle<cr>", desc = "Open trouble workspace diagnostics" },
--     { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Open trouble document diagnostics" },
--     { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Open trouble quickfix list" },
--     { "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Open trouble location list" },
--     { "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Open todos list in trouble" },
--   }
-- }
--
return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
    {
      "<leader>xt",
      "<cmd>Trouble todo<cr>",
      desc = "Todos (Trouble)"
    }
  },
}
