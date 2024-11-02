-- Easily restore sessions
return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")
    auto_session.setup({
      auto_restore_enabled = false, -- We only want to restore deliberately
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    -- Keymaps
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cws" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session fo ato session root dir" })
  end,
}

