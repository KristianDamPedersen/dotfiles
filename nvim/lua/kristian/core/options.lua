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
