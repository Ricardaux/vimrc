require('dap-python').test_runner = 'pytest'
require('dap-python').setup('/Users/rlavainne/.pyenv/shims/python3')
table.insert(require('dap').configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'Run connector',
  program = '${file}',
  args = {'run'}
  -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
})

vim.keymap.set('n', '<leader>df', function() require('dap-python').test_class() end, { desc = '[D]ebug Class' })
