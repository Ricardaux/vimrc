vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave" }, {
	pattern = { "*" },
	callback = function()
		if vim.api.nvim_buf_get_option(0, "modifiable") and vim.api.nvim_buf_get_option(0, "buftype") == "" then
			vim.api.nvim_command("write")
		end
	end,
})
