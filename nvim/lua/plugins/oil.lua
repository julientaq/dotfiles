return {
	"stevearc/oil.nvim",
	opts = {
		skip_confirm_for_simple_edits = true,
		default_file_explorer = true,
		view_options = {
			-- Show files and directories that start with "."
			show_hidden = true,
			natural_order = true,
			is_always_hidden = function(name, _)
				return name == ".." or name == ".git"
			end,
		},

		float = {
			-- Padding around the floating window
			padding = 8,
			max_width = 90,
			max_height = 0,
			win_options = {
				wrap = true,
				winblend = 0,
			},
		},
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
