-- Auto pair functionality
return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local autopairs = require("nvim-autopairs")
    -- Configure autopairs 
    autopairs.setup({
      check_ts = true, -- enable treesitter
      ts_config = {
        lua = { "sting" }, -- don't add pairs in lua sting treesitter nodes
        javascript = { "template_string" }, -- don't add pairs in JS template strings
        java = false, -- don't check treesitter in Java
      }
    })

    -- Enable auto completion functionality
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
