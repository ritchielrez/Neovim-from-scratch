require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    rainbow = {
        colors = {
            "#E06C75",
            "#ABB2BF",
            "#C678DD",
            "#E5CO7B",
            "#98C379",
            "#D19A66",
            "#56B6C2"
        },

        termcolors = {
            'Red',
            'Green',
            'Yellow',
            'Blue',
            'Magenta',
            'Cyan',
            'White',
        },

        enable = true,
        extended_mode = false,
        max_file_lines = nil,

    }
}

