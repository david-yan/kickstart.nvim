vim.keymap.set('n', '<leader>sf', function()
  require('telescopePickers.telescopePickers').prettyFilesPicker { picker = 'git_files' }
end, { desc = '[s]earch git [f]iles' })

vim.keymap.set('n', '<leader>gr', function()
  require('telescopePickers.telescopePickers').prettyGrepPicker { picker = 'live_grep' }
end, { desc = '[s]earch by [g]rep' })

vim.keymap.set('n', '<leader>sw', function()
  require('telescopePickers.telescopePickers').prettyGrepPicker { picker = 'grep_string' }
end, { desc = '[s]earch current [w]ord' })

vim.keymap.set('n', '<leader>sg', function()
  require('telescopePickers.telescopePickers').prettyFilesPicker { picker = 'find_files', cwd = './go' }
end, { desc = '[s]earch [g]o files' })

vim.keymap.set('n', '<leader>st', function()
  require('telescopePickers.telescopePickers').prettyFilesPicker { picker = 'find_files', cwd = './typescript' }
end, { desc = '[s]earch [t]ypescript files' })

vim.keymap.set('n', '<leader>sj', function()
  require('telescopePickers.telescopePickers').prettyFilesPicker { picker = 'find_files', cwd = './java' }
end, { desc = '[s]earch [j]ava files' })

vim.keymap.set('n', '<leader>ff', require('telescopePickers.telescopePickers').prettyDocumentSymbols, { desc = '[f]ind [f]unctions in the current file' })
