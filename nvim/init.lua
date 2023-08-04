vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("plugins.init")
require("setup.init")

vim.keymap.set('n', 'gr', '<Cmd>lua require"nvim-treesitter.textobjects".go_to_previous_start()<CR>:lua require("telescope.builtin").lsp_references()<CR>', { silent = true })
