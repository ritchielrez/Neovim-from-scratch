local wk = require('which-key')
local leader_mappings = {
    q = {":q!<cr>", "Quit"},
    Q = {":wq!<cr>", "Save and Quit"},
    ww = {":w!<cr>", "Save"},
    x = {":bdelete!<cr>", "Close Buffer"},
    n = {":bnext!<cr>", "Next buffer"},
    m = {":bprevious!<cr>", "Previous buffer"},
    e = {":NvimTreeToggle<cr>", "Toggle file explorer"},
    f = {
        name = "Telescope",
        f = {":Telescope find_files<cr>", "Find files"},
        r = {":Telescope live_grep<cr>", "Live grep"},
        b = {":Telescope buffers<cr>", "Buffers"},
        o = {":Telescope oldfiles<cr>", "Recent files"}
    }
}

local opts = { prefix = '<leader>' }
wk.register(leader_mappings, opts)

local comment_mappings = {
    gc = {
        name = "Comment",
        c = {":CommentToggle<cr>", "Comment/Uncomment lines"}
    }
}

wk.register(comment_mappings, { mode = "n", prefix = "", preset = true })
wk.register(comment_mappings, { mode = "v", prefix = "", preset = true })
