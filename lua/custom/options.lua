-- Set the leader key to Space (Must happen before plugins load)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Line numbers
vim.opt.number = true          -- Show absolute line number on the current line
vim.opt.relativenumber = true  -- Show relative numbers everywhere else

-- Enable mouse support
vim.opt.mouse = "a"

-- Sync Neovim clipboard with your OS clipboard
vim.opt.clipboard = "unnamedplus"

-- Indentation settings (4 spaces is standard, change to 2 if you prefer)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true       -- Converts tabs to spaces
vim.opt.breakindent = true     -- Maintain indent when wrapping lines

-- Smarter searching
vim.opt.ignorecase = true      -- Ignore case when searching
vim.opt.smartcase = true       -- ...unless you type a capital letter

-- UI Improvements
vim.opt.signcolumn = "yes"     -- Always show the column for git/errors to prevent screen jumping
vim.opt.cursorline = true      -- Highlight the current line
vim.opt.termguicolors = true   -- Enable 24-bit RGB colors
