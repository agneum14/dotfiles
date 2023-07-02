local fzf = require('fzf-lua')
vim.keymap.set('n', '<leader>ff', fzf.files)
vim.keymap.set('n', '<leader>fb', fzf.buffers)
vim.keymap.set('n', '<leader>fg', fzf.grep)
