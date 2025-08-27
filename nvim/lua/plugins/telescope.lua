return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- fzf implémentation en C pour plus de rapidité
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				reverse_dirs = true,
				preview = false,
				-- Parce que c'est joli
				prompt_prefix = " ",
				selection_caret = " ",
				path_display = { "absolute" },
				file_ignore_patterns = { ".git/", "node_modules" },
				layout_strategy = "vertical",
				find_command = { "fd", "-t=f", "-a" },
				wrap_results = true,
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set(
			"n",
			"<leader>ff",
			"<cmd>Telescope find_files<cr>",
			{ desc = "Recherche de chaînes de caractères dans les noms de fichiers" }
		)
		keymap.set(
			"n",
			"<leader>fs",
			"<cmd>Telescope persisted<cr>",
			{ desc = "Recherche de chaînes de caractères dans les sessions enregisrés par nvim.persisted" }
		)
		keymap.set(
			"n",
			"<leader>fw",
			"<cmd>Telescope live_grep<cr>",
			{ desc = "Recherche de chaînes de caractères dans le contenu des fichiers" }
		)
		keymap.set(
			"n",
			"<leader>fb",
			"<cmd>Telescope buffers<cr>",
			{ desc = "Recherche de chaînes de caractères dans les noms de buffers" }
		)
		keymap.set(
			"n",
			"<leader>fx",
			"<cmd>Telescope grep_string<cr>",
			{ desc = "Recherche de la chaîne de caractères sous le curseur" }
		)
	end,
}
