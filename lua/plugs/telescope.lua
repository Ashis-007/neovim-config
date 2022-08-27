local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<esc>"] = actions.close,
			},
		},
		file_ignore_patterns = { "node_modules" },
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
	},
})
