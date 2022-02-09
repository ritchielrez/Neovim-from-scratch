local status_ok, snips_load = pcall(require, "luasnip.loaders.from_vscode")
if not status_ok then
    return
end

snips_load.load()

