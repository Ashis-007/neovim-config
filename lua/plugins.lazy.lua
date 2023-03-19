local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
    -- Treesitter - language parser (for better syntax highlighting)
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    -- context on top
    'nvim-treesitter/nvim-treesitter-context',

    -- faster startup time
    'lewis6991/impatient.nvim',

    -- Theme
    'ellisonleao/gruvbox.nvim',
    -- 'navarasu/onedark.nvim',

    -- fzf - fuzzy finder
    { 'junegunn/fzf',                    dir = '~/.fzf',     build = './install --all' },
    'junegunn/fzf.vim',

    -- Telescope - fuzzy finder and more
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } },
    },

    -- nvim-tree
    'nvim-tree/nvim-web-devicons', -- icons
    'nvim-tree/nvim-tree.lua',

    -- Status line (Bottom)
    'nvim-lualine/lualine.nvim',

    -- Bufferline (Top)
    { 'akinsho/bufferline.nvim', tag = 'v2.*', dependencies = 'kyazdani42/nvim-web-devicons' },

    -- git decorations
    -- use({
    --   'lewis6991/gitsigns.nvim',
    --   tag = 'release', -- To use the latest release
    --   config = function()
    --     require('gitsigns').setup()
    --   end,
    -- })

    'tpope/vim-fugitive',

    'mbbill/undotree',

    -- comment stuff
    'numToStr/Comment.nvim',
    'JoosepAlviste/nvim-ts-context-commentstring',

    -- Search stuff
    -- use('justinmk/vim-sneak')
    -- use('easymotion/vim-easymotion')

    -- indent lines
    'lukas-reineke/indent-blankline.nvim',

    -- Intelligently reopen files at your last edit position
    'ethanholz/nvim-lastplace',

    -- automatically add ending pairs
    'windwp/nvim-autopairs',

    -- surround text with brackets
    'kylechui/nvim-surround',

    -- enable git blame on lines
    -- use('f-person/git-blame.nvim')

    -- git diff views
    'sindrets/diffview.nvim',

    -- color highlighter
    'norcalli/nvim-colorizer.lua',

    -- terminal inside nvim
    'voldikss/vim-floaterm',

    -- highlight current word
    -- use({ 'RRethy/vim-illuminate' })

    -- auto close and auto rename html tag
    'windwp/nvim-ts-autotag',

    -- notify alerts
    -- use({ 'rcarriga/nvim-notify' })

    -- TODO hightlights
    {
        'folke/todo-comments.nvim',
        dependencies = 'nvim-lua/plenary.nvim',
        config = function()
          require('todo-comments').setup {
          }
        end
    },

    -- cmp
    'hrsh7th/nvim-cmp', -- The completion plugin
    'hrsh7th/cmp-buffer', -- buffer completions
    'hrsh7th/cmp-path', -- path completions
    'saadparwaiz1/cmp_luasnip', -- snippet completions
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp-signature-help',

    -- snippets
    'L3MON4D3/LuaSnip', --snippet engine
    'rafamadriz/friendly-snippets', -- a bunch of snippets to use

    -- LSP
    'neovim/nvim-lspconfig', -- enable LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'jose-elias-alvarez/null-ls.nvim', -- for formatters and linters
})
