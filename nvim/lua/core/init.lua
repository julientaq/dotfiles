require("core.options")
require("core.keymaps")

vim.api.nvim_create_user_command("SumBraces", function()
	local sum = 0
	for _, line in ipairs(vim.api.nvim_buf_get_lines(0, 0, -1, false)) do
		for number in line:gmatch("{%s*(-?%d+)%s*}") do
			sum = sum + tonumber(number)
		end
	end
	vim.api.nvim_put({ tostring(sum) }, "l", true, true)
end, {})

