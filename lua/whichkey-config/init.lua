local wk = require("which-key")
local leader_mappings = {
	q = { ":q!<cr>", "Quit" },
	Q = { ":wq!<cr>", "Save and Quit" },
	ww = { ":w!<cr>", "Save" },
	x = { ":bdelete!<cr>", "Close Buffer" },
	n = { ":bnext!<cr>", "Next buffer" },
	m = { ":bprevious!<cr>", "Previous buffer" },
	e = { ":NvimTreeToggle<cr>", "Toggle file explorer" },
	f = {
		name = "Telescope",
		f = { ":Telescope find_files<cr>", "Find files" },
		r = { ":Telescope live_grep<cr>", "Live grep" },
		b = { ":Telescope buffers<cr>", "Buffers" },
		o = { ":Telescope oldfiles<cr>", "Recent files" },
	},
}

local opts = { prefix = "<leader>" }
wk.register(leader_mappings, opts)

local comment_mappings = {
	gc = {
		name = "Comment",
		c = { ":CommentToggle<cr>", "Comment/Uncomment lines" },
	},
}

wk.register(comment_mappings, { mode = "n", prefix = "", preset = true })
wk.register(comment_mappings, { mode = "v", prefix = "", preset = true })

local lsp_mappings = {
	-- rn = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Lsp: Symbol rename" },
	rn = { '<cmd>lua require("renamer").rename()<CR>', "Lsp: Symbol rename" },
	-- ca = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Lsp: Code action" },
	ca = { "<cmd>Telescope lsp_code_actions<CR>", "Lsp: Code action" },
	K = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Lsp: Hover keyword" },
	-- gd = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Lsp: Go to Definition" },
	gd = { "<cmd>Telescope lsp_definitions<CR>", "Lsp: Go to Definition" },
	go = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Lsp: Line diagnostic" },
	gj = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Lsp: Jump to next diagnostic" },
	gk = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Lsp: Jump to previous diagnostic" },
}

wk.register(lsp_mappings, { mode = "n", prefix = "", preset = true })

local quickfix_mappings = {
	c = {
		name = "Quickfix",
		j = { "<cmd>cnext<CR>", "Next in the list" },
		k = { "<cmd>cprev<CR>", "Previous in the list" },
		c = { "<cmd>cclose<CR>", "Close the list" },
		o = { "<cmd>copen<CR>", "Open the list" },
	},
}

wk.register(quickfix_mappings, opts)
