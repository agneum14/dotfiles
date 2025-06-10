-- fzf
local fzf = require('fzf-lua')
vim.keymap.set('n', '<leader>fs', fzf.files)
vim.keymap.set('n', '<leader>fb', fzf.buffers)
vim.keymap.set('n', '<leader>fg', fzf.grep)
vim.keymap.set('n', '<leader>ff', fzf.git_files)

-- misc
vim.keymap.set('n', '<leader>gq', require('conform').format)
