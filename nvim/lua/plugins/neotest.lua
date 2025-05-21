require("neotest").setup({
    adapters = {
        require("neotest-python")({
            dap = { justMyCode = false },
            runner = "pytest",
        }),
        require("neotest-plenary"),
        require("neotest-vim-test")({
            ignore_file_types = { "python", "vim", "lua", "kt" },
        }),
    },
})
vim.keymap.set('n', '<leader>tn', require("neotest").run.run, { desc = '[T]est [N]earest' })
vim.keymap.set('n', '<leader>tf', function() require("neotest").run.run(vim.fn.expand("%")) end,
    { desc = '[T]est [F]ile' })
vim.keymap.set('n', '<leader>tl', function() require("neotest").run.run_last() end, { desc = '[T]est [L]ast' })
