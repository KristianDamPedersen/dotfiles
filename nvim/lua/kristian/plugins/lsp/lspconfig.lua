-- Specific LSP options
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim",                   opts = {} }
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- Keymaps
    local keymap = vim.keymap
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- Buffer local mappings
        local opts = { buffer = ev.buf, silent = true }

        -- Keymaps (only available when LSP is loaded)
        keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts, { desc = "Show LSP references" })
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts, { desc = "Go to declaration" })
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts, { desc = "Show lsp definitions" })
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts, { desc = "Show lsp implementations" })
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts, { desc = "Show lsp type definitions" })
        keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts, { desc = "See available code actions" })
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts, { desc = "Smart rename" })
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts, { desc = "Show buffer diagnostics" })
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts, { desc = "Show diagnostics for line" })
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opts, { desc = "Jump to previous diagnostic in buffer" })
        keymap.set("n", "]d", vim.diagnostic.goto_next, opts, { desc = "Jump to next diagnostic in buffer" })
        keymap.set("n", "K", vim.lsp.buf.hover, opts, { desc = "Show documentation under cursor" })
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts, { desc = "Restart LSP" })
      end
    })

    -- Used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    mason_lspconfig.setup_handlers({
      -- default handler for installed servers
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities
        })
      end,

      -- OBS: If you need to customize the setup behaviour for a specific LSP, add below
      ["lua_ls"] = function()
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              -- Make the LSP recognize vim global
              diagnostics = {
                globals = { "vim" }
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        })
      end,
    })
  end
}
