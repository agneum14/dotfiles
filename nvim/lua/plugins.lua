return {
	'tpope/vim-fugitive',
	{
		'ibhagwan/fzf-lua',
		branch = 'main',
		depencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},
	'dracula/vim'
}
