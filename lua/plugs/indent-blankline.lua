require("indent_blankline").setup {
    show_current_context = true,
    -- show_current_context_start = true,
    buftype_exclude = { "terminal" },
    filetype_exclude = { "dashboard", "NvimTree", "packer", "lsp-installer", "alpha" },
}
