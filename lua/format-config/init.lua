local status_ok, format = pcall(require, "format")
if not status_ok then
  return
end

format.setup {
    lua = {
        {
            cmd = {
                function(file)
                    return string.format(
                    'lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb --indent-width=2 %s',
                    file)
                end
            }
        }
    },
    python = {
        {
            cmd = {
                function(file)
                    return string.format('black --quiet %s', file)
                end
            }
        }
    }
}

vim.cmd('autocmd BufWritePost * FormatWrite')
