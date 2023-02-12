local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,
    sources = {
        formatting.prettier.with({ extra_args = {} }),
        formatting.black.with({ extra_args = { "--fast" } }),
        formatting.buf,
        formatting.gofmt,
        formatting.goimports,
        formatting.nginx_beautifier,
        formatting.pg_format,
        formatting.sqlformat,
        diagnostics.flake8,
    },
})
