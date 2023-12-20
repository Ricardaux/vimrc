local function saveBeforeCommand(command)
  return function ()
    vim.cmd(':w')
    vim.cmd(command)
  end
end

vim.g['test#strategy'] = 'dispatch'
vim.keymap.set('n', '<leader>of', 'gf<C-W>o', { buffer = bufnr, desc = '[O]pen [F]ile from quickfixlist' })
vim.keymap.set('n', '<leader>tn', saveBeforeCommand('TestNearest'), { buffer = bufnr, desc = '[T]est [N]earest' })
vim.keymap.set('n', '<leader>tc', saveBeforeCommand('TestClass'), { buffer = bufnr, desc = '[T]est [C]lass' })
vim.keymap.set('n', '<leader>tf', saveBeforeCommand('TestFile'), { buffer = bufnr, desc = '[T]est [F]ile' })
vim.keymap.set('n', '<leader>ts', saveBeforeCommand('TestSuite'), { buffer = bufnr, desc = '[T]est [S]uite' })
vim.keymap.set('n', '<leader>tl', saveBeforeCommand('TestLast'), { buffer = bufnr, desc = '[T]est [L]ast' })
vim.keymap.set('n', '<leader>tv', saveBeforeCommand('TestVisit'), { buffer = bufnr, desc = '[T]est [V]isit' })

