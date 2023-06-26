local lsp = require('lsp-zero').preset({})

lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'clangd',
    'cssls',
    'ltex',
    'marksman',
    'svelte',
    'html',
    'tailwindcss',
    'jdtls',
    'lua_ls',
})

lsp.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    local opts = { buffer = bufnr }

    vim.keymap.set({ 'n', 'x' }, 'gq', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end, opts)
end)

lsp.skip_server_setup({ 'jdtls' });

lsp.setup();

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    }
})
