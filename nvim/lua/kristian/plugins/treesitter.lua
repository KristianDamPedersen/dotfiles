-- Foundation for syntax highlighting
return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- Enable syntax highlighting
      highlight = { enable = true },

      -- Enable better indentation behaviour
      indent = { enable = true },

      -- Enable autotagging
      autotag = { enable = true },

      -- Ensure these language parsers are installed
      -- OBS: Make sure you add any new language you use HERE.
      ensure_installed = {
        "lua",
        "gitignore",
        "dockerfile",
        "python",
        "terraform",
      },
    })
  end
}


