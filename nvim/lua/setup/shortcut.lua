vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', 'gm', function ()
  local count = tonumber(vim.v.count)
  if count ~= 0 then
    vim.cmd("normal! 0")
    for _ = 1, count do
      vim.cmd("normal! j")
    end
  end
  vim.cmd("normal! f(h")
  vim.lsp.buf.definition()
end)
vim.api.nvim_set_keymap('n', '<leader>i', ':lua vim.lsp.buf.import_module()<CR>', { silent = true, noremap = true, desc='Auto [I]mport'})

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
