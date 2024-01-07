require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "autopep8" },
		cpp = { "clang_format" },
	},
})

vim.keymap.set("n", "<leader>ff", require("conform").format, { desc = "[F]ormat [F]ile" })
