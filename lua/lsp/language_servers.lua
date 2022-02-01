-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local system_name
if vim.fn.has("mac") == 1 then
    system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
    system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
    system_name = "Windows"
else
    print("Unsupported system for sumneko")
end

-- Set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path = '/home/ritux/lua-language-server/bin'
local sumneko_binary = "lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local omnisharp_bin = "/home/ritux/omnisharp/run"

local langservers = { 'sumneko_lua', 'clangd', 'pyright', 'omnisharp', 'gopls' }

for _, server in ipairs(langservers) do

    -- If the lsp is sumneko_lua for lua
    if server == 'sumneko_lua' then
        require'lspconfig'[server].setup {
            cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
            settings = {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                        version = 'LuaJIT',
                        -- Setup your lua path
                        path = runtime_path
                    },
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = {'vim', 'use', 'packer_bootstrap' }
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false
                    },
                    -- Do not send telemetry data containing a randomized but unique identifier
                    telemetry = {enable = false}
                }
            }
        }

    -- Else if it's clangd which is loading up
    elseif server == 'clangd' then
        require'lspconfig'[server].setup {
            capabilities = capabilities,
            --cmd = { "clangd", "-target=x86_64-pc-windows-gnu"}
            flags = {
                -- This will be the default in neovim 0.7+
                debounce_text_changes = 150,
            }
        }

    -- For C# omnisharp lsp
    elseif server == 'omnisharp' then
        require'lspconfig'[server].setup {
            capabilities = capabilities,
            on_attach = function(_, bufnr)
                vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
            end,
            cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
            flags = {
                -- This will be the default in neovim 0.7+
                debounce_text_changes = 150,
            }
        }

    -- Otherwise if it's some other servers
    else
        require'lspconfig'[server].setup {
            capabilities = capabilities,
            flags = {
                -- This will be the default in neovim 0.7+
                debounce_text_changes = 150,
            }
        }
    end
end
