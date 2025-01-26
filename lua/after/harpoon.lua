local utils = require 'utils'
local harpoon = require 'harpoon'

-- Color harpoon tabline
vim.cmd 'highlight! HarpoonInactive guibg=NONE guifg=#63698c'
vim.cmd 'highlight! HarpoonActive guibg=NONE guifg=white'
vim.cmd 'highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7'
vim.cmd 'highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7'
vim.cmd 'highlight! TabLineFill guibg=NONE guifg=white'

-- harpoon
vim.keymap.set('n', '<leader>he', function()
  require('harpoon.ui').toggle_quick_menu()
end)
vim.keymap.set('n', '<leader>hx', require('harpoon.mark').add_file)
vim.keymap.set('n', '<leader>hr', function()
  local state = require 'telescope.actions.state'
  local selected_entry = state.get_selected_entry()

  -- This is the line you need to remove the entry
  harpoon:list():remove(selected_entry)
end)
vim.keymap.set('n', '<C-.>', require('harpoon.ui').nav_next)
vim.keymap.set('n', '<C-,>', require('harpoon.ui').nav_prev)
vim.keymap.set('n', '<leader>1', function()
  require('harpoon.ui').nav_file(1)
end)
vim.keymap.set('n', '<leader>2', function()
  require('harpoon.ui').nav_file(2)
end)
vim.keymap.set('n', '<leader>3', function()
  require('harpoon.ui').nav_file(3)
end)
vim.keymap.set('n', '<leader>4', function()
  require('harpoon.ui').nav_file(4)
end)
vim.keymap.set('n', '<leader>5', function()
  require('harpoon.ui').nav_file(5)
end)
vim.keymap.set('n', '<leader>6', function()
  require('harpoon.ui').nav_file(6)
end)
vim.keymap.set('n', '<leader>7', function()
  require('harpoon.ui').nav_file(7)
end)
vim.keymap.set('n', '<leader>8', function()
  require('harpoon.ui').nav_file(8)
end)
vim.keymap.set('n', '<leader>9', function()
  require('harpoon.ui').nav_file(9)
end)

-- Vertical split pane for harpoon navigation.
vim.keymap.set('n', '<leader>v1', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(1)
end)
vim.keymap.set('n', '<leader>v2', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(2)
end)
vim.keymap.set('n', '<leader>v3', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(3)
end)
vim.keymap.set('n', '<leader>v4', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(4)
end)
vim.keymap.set('n', '<leader>v5', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(5)
end)
vim.keymap.set('n', '<leader>v6', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(6)
end)
vim.keymap.set('n', '<leader>v7', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(7)
end)
vim.keymap.set('n', '<leader>v8', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(8)
end)
vim.keymap.set('n', '<leader>v9', function()
  vim.cmd 'vsplit'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(9)
end)

-- Horizontal split panes for harpoon navigation.
vim.keymap.set('n', '<leader>h1', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(1)
end)
vim.keymap.set('n', '<leader>h2', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(2)
end)
vim.keymap.set('n', '<leader>h3', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(3)
end)
vim.keymap.set('n', '<leader>h4', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(4)
end)
vim.keymap.set('n', '<leader>h5', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(5)
end)
vim.keymap.set('n', '<leader>h6', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(6)
end)
vim.keymap.set('n', '<leader>h7', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(7)
end)
vim.keymap.set('n', '<leader>h8', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(8)
end)
vim.keymap.set('n', '<leader>h9', function()
  vim.cmd 'split'
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
  require('harpoon.ui').nav_file(9)
end)

utils.map('n', [[hm]], ':Telescope harpoon marks<cr>')
