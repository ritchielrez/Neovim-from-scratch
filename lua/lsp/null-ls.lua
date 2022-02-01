local formatting = require("null-ls").builtins.formatting
local diagnostics = require("null-ls").builtins.diagnostics

require("null-ls").setup({
	sources = {
		formatting.stylua,
		formatting.black.with({ extra_args = { "--fast" } }),
		diagnostics.flake8,
	},
})
