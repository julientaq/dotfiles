require("core")
require("config.lazy")

-- vim.cmd("colorscheme tokyonight")
-- vim.cmd("colorscheme catppuccin-latte")
vim.cmd("colorscheme nightfox")
-- vim.cmd("colorscheme cyberdream")

local ft = require("Comment.ft")
ft.set("jinja", "{# %s #}")
ft.set("jinja2", "{# %s #}")

-- nunjucks. we can NOT stop calling it jinja now stuff
vim.filetype.add({
	extension = {
		svg = "xml",
		jinja = "jinja",
		jinja2 = "jinja2",
		j2 = "jinja",
		njk = "jinja",
	},
})

local lspconfig = require("lspconfig")

-- //set lsp config emmet
lspconfig.lemminx.setup({
	"xml",
	"svg",
})
lspconfig.emmet_language_server.setup({
	filetypes = {
		"css",
		"eruby",
		"html",
		"javascript",
		"javascriptreact",
		"less",
		"sass",
		"scss",
		"pug",
		"typescriptreact",
		"nunjucks",
		"jinja",
		"markdown",
	},
})

vim.lsp.set_log_level("off")

require("no-neck-pain").setup({
	buffers = {
		scratchPad = {
			-- set to `false` to
			-- disable auto-saving
			enabled = true,
			-- set to `nil` to default
			-- to current working directory
			location = "nil",
		},
		bo = {
			filetype = "md",
		},
	},
})

-- //persisted telesecope
vim.api.nvim_create_autocmd("User", {
	pattern = "PersistedTelescopeLoadPre",
	callback = function(session)
		-- Save the currently loaded session passing in the path to the current session
		require("persisted").save({ session = vim.g.persisted_loaded_session })

		-- Delete all of the open buffers
		vim.api.nvim_input("<ESC>:%bd!<CR>")
	end,
})
