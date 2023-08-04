vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end, { desc = '[D]ebug [C]ontinue' })
vim.keymap.set('n', '<leader>dn', function() require('dap').step_over() end, { desc = '[D]ebug Step [N]ext' })
vim.keymap.set('n', '<leader>do', function() require('dap').step_over() end, { desc = '[D]ebug Step [O]ut' })
vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end, { desc = '[D]ebug Step [I]nto' })
vim.keymap.set('n', '<leader>dp', function() require('dap').step_back() end, { desc = '[D]ebug [P]revious Step' })
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end, { desc = '[D]ebug Toggle [B]reakpoint' })
vim.keymap.set('n', '<leader>dr', function() require('dap').restart() end, { desc = '[D]ebug [R]estart' })
vim.keymap.set('n', '<leader>de', function() require('dap').terminate() end, { desc = '[D]ebug [E]nd' })

