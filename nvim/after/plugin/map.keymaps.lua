local opts = {noremap = true, silent = true}

-- lsp
vim.api.nvim_set_keymap('n', '<Leader>gj', '', {
    callback = function ()
        vim.lsp.buf.code_action()
    end,
})
vim.api.nvim_set_keymap('n', '<Leader>gr', '', {
    callback = function ()
        vim.lsp.buf.rename()
    end,
})

-- fzf
local fzf = require('fzf-lua')
vim.keymap.set('n', '<leader>fs', fzf.files)
vim.keymap.set('n', '<leader>fb', fzf.buffers)
vim.keymap.set('n', '<leader>fg', fzf.grep)
vim.keymap.set('n', '<leader>ff', fzf.git_files)
