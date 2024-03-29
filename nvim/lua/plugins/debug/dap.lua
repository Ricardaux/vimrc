vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end, { desc = '[D]ebug [C]ontinue' })
vim.keymap.set('n', '<leader>dn', function() require('dap').step_over() end, { desc = '[D]ebug Step [N]ext' })
vim.keymap.set('n', '<leader>do', function() require('dap').step_out() end, { desc = '[D]ebug Step [O]ut' })
vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end, { desc = '[D]ebug Step [I]nto' })
vim.keymap.set('n', '<leader>dp', function() require('dap').step_back() end, { desc = '[D]ebug [P]revious Step' })
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end, { desc = '[D]ebug Toggle [B]reakpoint' })
vim.keymap.set('n', '<leader>dr', function() require('dap').restart() end, { desc = '[D]ebug [R]estart' })
vim.keymap.set('n', '<leader>de', function() require('dap').terminate() end, { desc = '[D]ebug [E]nd' })
vim.keymap.set('n', '<leader>dm', function() require('dap').run_to_cursor() end, { desc = '[D]ebug to [M]arker' })
vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end, { desc = '[D]ebug [L]ast' })
vim.keymap.set('n', '<leader>dd', function() require('dap').disconnect() end, { desc = '[D]ebug [D]isconnect' })
vim.keymap.set('n', '<leader>dv', function() require('dap').focus_frame() end, { desc = '[D]ebug [V]isit' })

vim.keymap.set('n', '<leader>dt', function()
  local filetype = vim.bo.filetype
  if filetype == 'python' then
    require('dap-python').test_method()
  elseif filetype == 'go' then
    require('dap-go').debug_test()
  else
    print("Language not supported for debugging tests")
  end
end, { desc = '[D]ebug [T]est' })
