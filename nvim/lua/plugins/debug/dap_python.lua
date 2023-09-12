require('dap-python').test_runner = 'pytest'
require('dap-python').setup('/Users/rlavainne/.pyenv/shims/python3')
table.insert(require('dap').configurations.python, {
  type = 'python',
  request = 'attach',
  name = 'Connector',
  port = 1234
})

vim.keymap.set('n', '<leader>df', function() require('dap-python').test_class() end, { desc = '[D]ebug Class' })
