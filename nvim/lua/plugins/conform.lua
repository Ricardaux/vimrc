require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "autopep8" },
  },
})

vim.keymap.set('n', '<leader>ff', require("conform").format, { desc =  '[F]ormat [F]ile' })
