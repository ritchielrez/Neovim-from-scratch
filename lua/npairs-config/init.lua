local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

npairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

