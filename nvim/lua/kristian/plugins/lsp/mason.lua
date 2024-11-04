-- LSP manager
return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup()

    mason_lspconfig.setup({
      -- List of servers for mason to install.
      -- Add LSPs here! and don't forget to add corresponding language parsers
      -- for tree sitter.
      ensure_installed = {
        -- LSP
        "lua_ls",      -- Lua LSP
        "pyright",     -- Python LSP
        "terraformls", -- Terraform LSP
      }
    })

    mason_tool_installer.setup({
      ensure_installed = {
        -- Formatters
        "stylua", -- Formatter for Lua
        "black",  -- Opinionated formatter for Python

        -- Linters
        "pylint", -- Linter for Python
      }
    })
  end
}
