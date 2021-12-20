-- Leader key is used with other keys to make new unique maps
-- My leader key is space
vim.g.mapleader = " "

------------------- Keymaps ----------------------
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }

-- Editor maps related to apply config, save current file and quit the editor
map("n", '<leader>s', ':so ~/.config/nvim/init.vim<cr>', opts)
map("n", '<leader>ww', ':w<cr>', opts)
map("n", '<leader>q', ':q<cr>', opts)

-- Switch to diffents splits faster
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-j>', '<C-w>j', opts)

-- Quit insert mode faster
map('i', '<A-j>', '<Esc>', { noremap = true, silent = true } )

-- Better indetation
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- I want to save files which I have no access to write
map('c', 'w!!', '%!sudo tee > /dev/null %', {})

-- Comment lines
map('n', 'gcc', ':CommentToggle<cr>', opts)
