require("neoclip").setup()

require("telescope").setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
	defaults = {
		file_ignore_patterns = { "node_modules" },
	},
})
require("telescope").load_extension("lazygit")
require("telescope").load_extension("ui-select")
require("telescope").load_extension("notify")
require("telescope").load_extension("neoclip")
