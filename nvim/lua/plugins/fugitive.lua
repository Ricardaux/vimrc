vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })
vim.keymap.set('n', 'gh', "<cmd>diffget //2<CR>", { desc = '[G]it [S]tatus' })
vim.keymap.set('n', 'gl',  "<cmd>diffget //3<CR>", { desc = '[G]it [S]tatus' })
vim.cmd([[command! Gp Git push]])
vim.cmd([[command! Gpf Git push --force-with-lease]])
vim.cmd([[command! Gl Git pull]])
vim.cmd([[command! Gpsup execute "!git push --set-upstream origin " . system('git rev-parse --abbrev-ref HEAD')]])
vim.cmd([[command! Glog Git log --oneline --decorate --graph]])
vim.cmd([[command! -nargs=1 Gco execute "Git checkout " . <q-args>]])
vim.cmd([[command! -nargs=1 -complete=customlist,v:lua.list_branches Gsw execute "Git switch " . <q-args>]])
vim.cmd([[command! -nargs=1 -complete=customlist,v:lua.list_branches Grb execute "Git rebase " . <q-args>]])
vim.cmd([[command! -nargs=1 -complete=customlist,v:lua.list_branches Grbi execute "Git rebase -i --autosquash " . <q-args>]])

function _G.list_branches(arg_lead)
  local current_file_path = vim.fn.expand("%:p:h")
  local fugitive_branches = vim.fn.systemlist("git -C " .. current_file_path .. " branch --list | cat | awk '{print $1}' | awk '/^" .. arg_lead .. "/'")
  return fugitive_branches
end

