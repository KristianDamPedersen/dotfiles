-- This file contains sensible defaults for simple vim options
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Shows relative numbers in buffer
opt.relativenumber = true

-- Shows absolute line number at cursor
opt.number = true

-- Tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent fom current line when starting a new one

opt.wrap = false -- Disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes yo want case-insentive


-- Turn on termguicolors
opt.termguicolors = true
opt.background = "dark" -- Dark mode when available
opt.signcolumn = "yes" -- Show sign column so that text doesn't shift


-- backspace
opt.backspace = "indent,eol,start" -- Make backspace work as you'd expect

-- clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- split windows: I dont personally use neovims split window feature, but if you do you can uncomment the options below
-- opt.splitright = true -- Vertically splits to the right
-- opt.splitbelow = true -- Horizontally splits below

