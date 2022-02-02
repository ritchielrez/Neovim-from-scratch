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
vim.opt.updatetime = 500
vim.opt.timeoutlen = 200

-- Show me the current files that are opened in different buffers at the top
vim.opt.showtabline = 2

-- Enable mouse support
vim.opt.mouse = "a"

-- Don't beep
vim.opt.belloff = "all"

vim.opt.list = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.expandtab = true

-- Loading default plugins for different filetypes
-- vim.g.loaded_machparen = 1
-- vim.g.loaded_machit = 1
-- vim.g.loaded_logiPat = 1
-- vim.g.loaded_rrhelper = 1
-- vim.g.loaded_tarPlugin = 1
-- vim.g.loaded_gzip = 1
-- vim.g.loaded_zipPlugin = 1
-- vim.g.loaded_2html_plugin = 1
-- vim.g.loaded_shada_plugin = 1
-- vim.g.loaded_spelfile_plugin = 1
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins = 0
-- vim.g.loaded_tarPlugin = 1

-- Change the default shell
-- vim.o.shell = 'pwsh'

-- Setting file formatting correctly so I don't see ^M anymore
vim.cmd([[set ffs=unix,dos]])

-- Lua global functions used to load up plugin configs without crashing noevim
function _G.config_error(err)
	print("Backtrace:", debug.traceback(err))
end

function _G.load_config(config)
	local _, required = xpcall(require, config_error, config)
	return required
end

function _G.setup_config(setup_module, config)
	local setup = load_config(setup_module).setup
	if type(setup) == "function" then
		return setup(config)
	else
		print("No setup function for:", setup_module)
	end
end
