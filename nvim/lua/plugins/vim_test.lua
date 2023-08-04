vim.g['test#strategy'] = 'dispatch'
vim.keymap.set('n', '<leader>of', 'gf<C-W>o', { buffer = bufnr, desc = '[O]pen [F]ile from quickfixlist' })
vim.keymap.set('n', '<leader>tn', ':TestNearest<CR>', { buffer = bufnr, desc = '[T]est [N]earest' })
vim.keymap.set('n', '<leader>tc', ':TestClass<CR>', { buffer = bufnr, desc = '[T]est [C]lass' })
vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', { buffer = bufnr, desc = '[T]est [F]ile' })
vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>', { buffer = bufnr, desc = '[T]est [S]uite' })
vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { buffer = bufnr, desc = '[T]est [L]ast' })
vim.keymap.set('n', '<leader>tv', ':TestVisit<CR>', { buffer = bufnr, desc = '[T]est [V]isit' })

