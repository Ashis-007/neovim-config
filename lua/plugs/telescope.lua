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
      layout_config = {
        width = function(_, max_columns)
          local percentage = 1
          local max = 100
          return math.min(math.floor(percentage * max_columns), max)
        end,
        height = function(_, _, max_lines)
          local percentage = 0.7
          local min = 70
          return math.max(math.floor(percentage * max_lines), min)
        end
      }
    },
  },
})
