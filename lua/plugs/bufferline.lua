local bufferline = require("bufferline")

bufferline.setup({
    options = {
        numbers = "buffer_id",
        close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        indicator = {
            icon = "█", -- this should be omitted if indicator style is not 'icon'
            style = "icon", -- 'icon' | 'underline' | 'none'
        },
        --[[ buffer_close_icon = "", ]]
        -- buffer_close_icon = '',
        modified_icon = "✎",
        --[[ close_icon = "", ]]
        -- close_icon = '',
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 30,
        max_prefix_length = 30,
        tab_size = 23,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = true,
        -- custom_filter = function (buf_number, buf_numbers)
        --     if buf_numbers[1] ~= buf_number then
        --         return true
        --     end
        -- end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                padding = 1,
            },
        },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        color_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        separator_style = "thick", -- | "thick" | "thin" | { 'any', 'any' },
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        highlights = {
            fill = {
                guifg = { attribute = "fg", highlight = "#ff0000" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
            background = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
            buffer_selected = {
                guifg = "#303030",
                guibg = "#82B679",
                gui = "bold",
            },
            buffer_visible = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
            close_button = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
            close_button_visible = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
            -- close_button_selected = {
            --   guifg = {attribute='fg',highlight='TabLineSel'},
            --   guibg ={attribute='bg',highlight='TabLineSel'}
            --   },

            tab_selected = {
                guifg = "#303030",
                guibg = "#82B679",
                gui = "bold",
            },
            tab = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
            tab_close = {
                -- guifg = {attribute='fg',highlight='LspDiagnosticsDefaultError'},
                guifg = { attribute = "fg", highlight = "TabLineSel" },
                guibg = { attribute = "bg", highlight = "Normal" },
            },
            duplicate_selected = {
                guifg = { attribute = "fg", highlight = "TabLineSel" },
                guibg = { attribute = "bg", highlight = "TabLineSel" },
                gui = "italic",
            },
            duplicate_visible = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
                gui = "italic",
            },
            duplicate = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
                gui = "italic",
            },
            modified = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
            modified_selected = {
                guifg = { attribute = "fg", highlight = "Normal" },
                guibg = { attribute = "bg", highlight = "Normal" },
            },
            modified_visible = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
            separator = {
                guifg = { attribute = "fg", highlight = "TabLine" },
                guibg = { attribute = "bg", highlight = "TabLine" },
            },
            separator_selected = {
                guifg = { attribute = "fg", highlight = "Normal" },
                guibg = { attribute = "bg", highlight = "#ffffff" },
            },
            -- separator_visible = {
            --   guifg = {attribute='bg',highlight='TabLine'},
            --   guibg = {attribute='bg',highlight='TabLine'}
            --   },
            indicator_selected = {
                guifg = "#303030",
                guibg = "#82B679",
            },
        },
    },
})

-- Switch buffers by number
local keymap = vim.keymap.set

for
i = 1, 9
do
  keymap("n", "<leader>" .. i, function()
    bufferline.go_to_buffer(i, true)
  end)
end

keymap("n", "<leader>" .. "0", function()
  bufferline.go_to_buffer( -1, true)
end)
