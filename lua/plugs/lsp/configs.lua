local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local lspconfig = require("lspconfig")

local servers = { "clangd", "cssls", "emmet_ls", "gopls", "html", "jsonls", "tsserver", "jdtls", "prismals", "pyright",
  "sqlls", "yamlls", "bashls", "dockerls", "graphql", "tailwindcss", "sumneko_lua" }

lsp_installer.setup({
  ensure_installed = servers,
})

for _, server in pairs(servers) do
  local opts = {
    on_attach = function(client, bufnr)
      require("plugs.lsp.handlers").on_attach(client, bufnr)
      -- require 'illuminate'.on_attach(client)
    end,
    capabilities = require("plugs.lsp.handlers").capabilities,
  }
  local has_custom_opts, server_custom_opts = pcall(require, "plugs.lsp.settings." .. server)
  if has_custom_opts then
    opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
  end
  lspconfig[server].setup(opts)
end
