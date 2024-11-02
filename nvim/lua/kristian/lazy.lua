-- Bootstraps lazy, so if it isn't already installed it will do so
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Calls all the individual setup files inside the kristian/plugins folder.
require("lazy").setup("kristian.plugins", {
  checker = { enabled = true }
})
