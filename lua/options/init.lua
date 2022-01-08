-- Enable filetype plugins for file specific indentation
vim.cmd("filetype plugin indent on")

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Make a column left to the line numbers, where I can see errors signatures
vim.opt.signcolumn = "yes"

-- Termguicolors might be needed for certain plugins
vim.opt.termguicolors = true

-- I don't swap files in my system, which are backup files created by neovim
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Refresh the buffer faster(?)
vim.opt.updatetime = 300
vim.opt.timeoutlen = 100

-- Show me the current files that are opened in different buffers at the top
vim.opt.showtabline = 2

-- Enable mouse support
vim.opt.mouse = "a"

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.expandtab = true

-- Loading default plugins for different filetypes
vim.g.loaded_machparen = 1
vim.g.loaded_machit = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_gzip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_shada_plugin = 1
vim.g.loaded_spelfile_plugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins = 1
vim.g.loaded_tarPlugin = 1

-- Change the default shell
-- vim.o.shell = 'pwsh'

vim.opt.shortmess:append("c")
