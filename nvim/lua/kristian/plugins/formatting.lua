-- Auto formatters
return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      fomatters_by_ft = {
        -- Here we can specify which formatters we use
        -- depending on the file type
        -- OBS: Remember to specify in the mason files that these
        -- formatters should be installed.
        lua = { "stylua" },
        python = { "black" }
      },
      format_on_save  = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000
      }
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000
      })
    end, { desc = "Format file or range (in visual mode)" })
  end
}
