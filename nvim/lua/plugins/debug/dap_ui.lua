require("dapui").setup({
    layouts = { {
        elements = { {
            id = "scopes",
            size = 0.5
          },
          {
            id = "stacks",
            size = 0.5
          } },
        position = "left",
        size = 40
      } }})
vim.keymap.set('n', '<leader>du', function() require('dapui').open() end, { desc = '[D]ebug [U]i' })

