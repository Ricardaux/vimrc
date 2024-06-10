require("dapui").setup({
  layouts = { {
    elements = {
      {
        id = "scopes",
        size = 0.5
      },
    },
    position = "bottom",
    size = 0.25
  }, {
    elements = {
      {
        id = "watches",
        size = 0.2
      },
      {
        id = "stacks",
        size = 0.3
      },
    },
    position = "left",
    size = 40
  }
  }
})
vim.keymap.set('n', '<leader>du', function() require('dapui').open() end, { desc = '[D]ebug [U]i' })
vim.keymap.set('v', '<leader>dw', require("dapui").eval, { desc = '[D]ebug [W]atch' })
