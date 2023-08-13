-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --use ('vim-airline/vim-airline')
  --use ('vim-airline/vim-airline-themes')
  use {
      "nvim-lualine/lualine.nvim",
      requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
  })

  use "rebelot/kanagawa.nvim" -- wave, dragon, lotus
  use "EdenEast/nightfox.nvim" -- carbonfox, terafox, nordfox, duskfox, dawnfox, dayfox, nightfox 

  use ({
    'folke/tokyonight.nvim', -- moon, storm, ?
    as = "tokyonight",
    config = function()
    end
  })

  use "mfussenegger/nvim-jdtls"

  use {
    'daltonmenezes/aura-theme', -- aura-dark, aura-dark-soft-text, aura-soft-dark, aura-soft-dark-soft-text
    rtp = 'packages/neovim',
    config = function()
    end
  }

  --use 'roxma/vim-hug-neovim-rpc'
  --use 'roxma/nvim-yarp'
  --use 'Shougo/deoplete.nvim'

  -- Packer
  use({
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
          -- add any options here
      })
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      }
  })

  -- use 'eandrju/cellular-automaton.nvim'

  use {'neoclide/coc.nvim', branch = 'release'}

  -- use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- use( 'nvim-treesitter/playground')

  -- use {
	  -- 'VonHeikemen/lsp-zero.nvim',
	  -- requires = {
		  -- -- LSP Support
		  -- {'neovim/nvim-lspconfig'},
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  -- -- Autocompletion
		  -- {'hrsh7th/nvim-cmp'},
		  -- {'hrsh7th/cmp-buffer'},
		  -- {'hrsh7th/cmp-path'},
		  -- {'saadparwaiz1/cmp_luasnip'},
		  -- {'hrsh7th/cmp-nvim-lsp'},
		  -- {'hrsh7th/cmp-nvim-lua'},

		  -- -- Snippets
		  -- {'L3MON4D3/LuaSnip'},
		  -- {'rafamadriz/friendly-snippets'},
	  -- }
  -- }

  end)
