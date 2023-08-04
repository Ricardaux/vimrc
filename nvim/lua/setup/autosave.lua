vim.cmd([[
  augroup auto_save
    autocmd!
    autocmd BufLeave * silent! write
  augroup END
]])
