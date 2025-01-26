-- Git through vim-fugitive
vim.keymap.set('n', '<leader>gb', function()
  vim.cmd.Git 'blame'
end)
vim.keymap.set('n', '<leader>gd', vim.cmd.Gvdiffsplit)
