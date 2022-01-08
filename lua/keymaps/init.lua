-- Leader key is used with other keys to make new unique maps
-- My leader key is space
vim.g.mapleader = " "

------------------- Keymaps ----------------------
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }

-- Switch to diffents splits faster
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-j>", "<C-w>j", opts)

-- Quit insert mode faster
map("i", "<A-j>", "<Esc>", { noremap = true, silent = true })

-- Better indetation
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- I want to save files which I have no access to write
map("c", "w!!", "%!sudo tee > /dev/null %", {})

-- Lsp keymaps for better IDE experience
map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", {})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", {})
