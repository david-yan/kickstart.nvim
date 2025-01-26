-- Moving blocks of code in visual mode.
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keep cursor at start of line when appending to end.
vim.keymap.set('n', 'J', 'mzJ`z')

-- Paste without replacing clipboard buffer.
vim.keymap.set('x', '<leader>p', '"_dP')

vim.keymap.set('n', 'Q', '<nop>')

-- Close window.
vim.keymap.set('n', '<leader>cw', function()
  vim.cmd 'close'
end)

-- Open terminal.
vim.keymap.set('n', '<leader>t', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  vim.cmd 'terminal'
end)

vim.keymap.set('n', '<leader>vt', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  vim.cmd 'terminal'
end)

-- Maximize pane.
vim.api.nvim_set_keymap('n', '<leader>M', '<C-W>|<C-W>_', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>m', '<C-W>=', { noremap = true })
