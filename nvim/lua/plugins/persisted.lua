return {
	"olimorris/persisted.nvim",
	lazy = false,
	opts = {
		autoload = true,
		should_save = function()
			if vim.bo.filetype == "gitcommit" then
				return false
			end
			return true
		end,
	},
}
