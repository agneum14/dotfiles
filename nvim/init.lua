vim.g.mapleader = ' '

require('lazy-setup')
require('set')

servers = { 'pylsp', 'lua_ls', 'html', 'tailwindcss', 'gopls' }
for _, server in ipairs(servers) do
    vim.lsp.enable(server)
end
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = servers,
    automatic_enable = false
}
