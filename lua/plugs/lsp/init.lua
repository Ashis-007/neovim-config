local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require "plugs.lsp.configs"
require "plugs.lsp.handlers".setup()
require "plugs.lsp.null-ls"
