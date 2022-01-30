require("options")
require("plugins")
require("keymaps")
require("autocommands")

-- This enables full transparency for neovim
vim.cmd([[
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none
]])

vim.cmd([[ command! Fmt execute 'lua vim.lsp.buf.formatting_sync()' ]])

