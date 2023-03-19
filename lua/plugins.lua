local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
          "git",
          "clone",
          "--depth",
          "1",
          "https://github.com/wbthomason/packer.nvim",
          install_path,
      })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile>
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("Failed to load packer.")
  return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
          return require("packer.util").float({ border = "rounded" })
        end,
    },
})

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return packer.startup(function(use)
      -- Packer can manage itself
      use("wbthomason/packer.nvim")

      -- Treesitter - language parser (for better syntax highlighting)
      use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

      -- context on top
      use 'nvim-treesitter/nvim-treesitter-context'

      -- faster startup time
      use 'lewis6991/impatient.nvim'

      -- Theme
      use { "ellisonleao/gruvbox.nvim" }
      -- use 'navarasu/onedark.nvim'

      -- fzf - fuzzy finder
      use({ "junegunn/fzf", dir = "~/.fzf", run = "./install --all" })
      use("junegunn/fzf.vim")

      -- Telescope - fuzzy finder and more
      use({
          "nvim-telescope/telescope.nvim",
          tag = "0.1.x",
          requires = { { "nvim-lua/plenary.nvim" } },
      })

      -- nvim-tree
      use("nvim-tree/nvim-web-devicons") -- icons
      use("nvim-tree/nvim-tree.lua")

      -- Status line (Bottom)
      use("nvim-lualine/lualine.nvim")

      -- Bufferline (Top)
      use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

      -- git decorations
      -- use({
      --   "lewis6991/gitsigns.nvim",
      --   tag = "release", -- To use the latest release
      --   config = function()
      --     require("gitsigns").setup()
      --   end,
      -- })

      use("tpope/vim-fugitive")

      use("mbbill/undotree")

      -- comment stuff
      use("numToStr/Comment.nvim")
      use("JoosepAlviste/nvim-ts-context-commentstring")

      -- Search stuff
      -- use("justinmk/vim-sneak")
      -- use("easymotion/vim-easymotion")

      -- indent lines
      use "lukas-reineke/indent-blankline.nvim"

      -- Intelligently reopen files at your last edit position
      use 'ethanholz/nvim-lastplace'

      -- automatically add ending pairs
      use("windwp/nvim-autopairs")

      -- surround text with brackets
      use("kylechui/nvim-surround")

      -- enable git blame on lines
      -- use('f-person/git-blame.nvim')

      -- git diff views
      use('sindrets/diffview.nvim')

      -- color highlighter
      use({ "norcalli/nvim-colorizer.lua" })

      -- terminal inside nvim
      use("voldikss/vim-floaterm")

      -- jump to place
      use { "ggandor/leap.nvim", config = function()
        require("leap").add_default_mappings(true)
      end
      }

      -- highlight current word
      -- use({ "RRethy/vim-illuminate" })

      -- auto close and auto rename html tag
      use({ "windwp/nvim-ts-autotag" })

      -- notify alerts
      -- use({ "rcarriga/nvim-notify" })

      -- TODO hightlights
      use {
          "folke/todo-comments.nvim",
          requires = "nvim-lua/plenary.nvim",
          config = function()
            require("todo-comments").setup {
            }
          end
      }

      -- cmp
      use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
      use({ "hrsh7th/cmp-buffer" }) -- buffer completions
      use({ "hrsh7th/cmp-path" }) -- path completions
      use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
      use({ "hrsh7th/cmp-nvim-lsp" })
      use({ "hrsh7th/cmp-nvim-lua" })
      use({ "hrsh7th/cmp-nvim-lsp-signature-help" })

      -- snippets
      use({ "L3MON4D3/LuaSnip" }) --snippet engine
      use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

      -- LSP
      use({ "neovim/nvim-lspconfig" }) -- enable LSP
      use { "williamboman/mason.nvim" }
      use { "williamboman/mason-lspconfig.nvim" }
      use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
    end)
