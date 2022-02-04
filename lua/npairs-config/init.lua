local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

local Rule = npairs.rule

npairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

