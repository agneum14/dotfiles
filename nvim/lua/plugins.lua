return {
    'tpope/vim-fugitive',
    {
        'ibhagwan/fzf-lua',
        branch = 'main',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = 'JoosepAlviste/nvim-ts-context-commentstring'
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
            { "rafamadriz/friendly-snippets" },
            { "https://github.com/saadparwaiz1/cmp_luasnip" },
        }
    },
    'mfussenegger/nvim-jdtls',
    { "folke/neodev.nvim", opts = {} },
    'ggandor/leap.nvim',
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    'terrortylor/nvim-comment',
    'xiyaowong/transparent.nvim',

    -- COLORSCHEMES
    'dracula/vim',
    'folke/tokyonight.nvim',
    'overcache/NeoSolarized',
    'ellisonleao/gruvbox.nvim',
    'rose-pine/neovim',
}
