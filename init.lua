require('options')
require('plugins')
require('keymaps')

-- vim.cmd [[
-- highlight Normal     ctermbg=NONE guibg=NONE
-- highlight LineNr     ctermbg=NONE guibg=NONE
-- highlight SignColumn ctermbg=NONE guibg=NONE
-- highlight NvimTreeSignColumn ctermbg=NONE guibg=NONE 
-- highlight NvimTreeNormal ctermbg=NONE guibg=NONE 
-- highlight NvimTreeStatusLine ctermbg=NONE guibg=NONE 
-- highlight MsgArea ctermbg=NONE guibg=NONE 
-- highlight NvimTreeOpenedFile ctermbg=NONE guibg=NONE
-- highlight VertSplit cterm=NONE

-- set fillchars+=vert:\ 
-- ]]

-- This enables full transparency for neovim
vim.cmd [[
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none
]]
