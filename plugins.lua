---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- overrde plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require("custom.configs.treesitter").treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require("custom.configs.nvimtree").nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- vimwiki
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/Projects/vimwiki/",
        }
      }
    end,
  },

  -- ChatGPT
  {
  'jackMort/ChatGPT.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('chatgpt').setup()
  end
  },

  -- Nextflow syntax hightlighting
  {
    'Mxrcon/nextflow-vim',
    lazy = false,
  }

}

return plugins
