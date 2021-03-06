vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_header = {
      [[              ▄▄▄▄▄▄▄▄▄            ]],
      [[           ▄█████████████▄          ]],
      [[   █████  █████████████████  █████  ]],
      [[   ▐████▌ ▀███▄       ▄███▀ ▐████▌  ]],
      [[    █████▄  ▀███▄   ▄███▀  ▄█████    ]],
      [[    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌    ]],
      [[     ███▄▀███▄  ▀███▀  ▄███▀▄███    ]],
      [[     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌    ]],
      [[      ███▄▀█▄██ ██▄██ ██▄█▀▄███      ]],
      [[       ▀███▄▀██ █████ ██▀▄███▀      ]],
      [[      █▄ ▀█████ █████ █████▀ ▄█      ]],
      [[      ███        ███        ███      ]],
      [[      ███▄    ▄█ ███ █▄    ▄███      ]],
      [[      █████ ▄███ ███ ███▄ █████      ]],
      [[      █████ ████ ███ ████ █████      ]],
      [[      █████ ████▄▄▄▄▄████ █████      ]],
      [[       ▀███ █████████████ ███▀      ]],
      [[         ▀█ ███ ▄▄▄▄▄ ███ █▀        ]],
      [[            ▀█▌▐█████▌▐█▀            ]],
      [[               ███████              ]],
}
-- vim.g.dashboard_custom_header = {
--     [[        _..._                 ]],
--     [[      .'     '.      _        ]],
--     [[     /    .-""-\   _/ \       ]],
--     [[   .-|   /:.   |  |   |       ]],
--     [[   |  \  |:.   /.-'-./        ]],
--     [[   | .-'-;:__.'    =/         ]],
--     [[   .'=  *=|NASA _.='          ]],
--     [[  /   _.  |    ;              ]],
--     [[ ;-.-'|    \   |              ]],
--     [[/   | \    _\  _\             ]],
--     [[\__/'._;.  ==' ==\            ]],
--     [[         \    \   |           ]],
--     [[         /    /   /           ]],
--     [[         /-._/-._/            ]],
--     [[         \   `\  \            ]],
--     [[          `-._/._/            ]],
-- }
vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    d = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
    b = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
    e = {description = {'  Config             '}, command = 'edit ~/Appdata/Local/nvim/init.lua'},
}
vim.g.dashboard_custom_footer = {'We fear the future because we are wasting today. - Mother Teresa'}
