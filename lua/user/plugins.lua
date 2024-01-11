vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- explore more plugins at
-- https://github.com/rockerBOO/awesome-neovim
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme
  use 'folke/tokyonight.nvim'
  use 'tjdevries/colorbuddy.nvim'
  use 'svrana/neosolarized.nvim'
  use({ 'rose-pine/neovim', as = 'rose-pine' })

  -- markdown
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use "folke/zen-mode.nvim"

  -- lsp-zero
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    },

    -- tree sitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
    },

    -- telescope
    -- sudo dnf install ripgrep
    -- sudo dnf install fd-find
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    },

    -- file explorer
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
    },

    -- statusline
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    },

    -- lazygit
    -- nvim v0.7.2
    use {
      "kdheepak/lazygit.nvim",
      -- optional for floating window border decoration
      requires = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
      },
      config = function ()
        require("telescope").load_extension("lazygit")
      end,
    },

    -- for smooth scrolling
    use 'karb94/neoscroll.nvim',

    -- for smart auto-pairs
    use {
      'ZhiyuanLck/smart-pairs',
      -- event = 'InsertEnter',
      config = function()
        require('pairs'):setup()
      end
    },
    -- auto-save
    use {
      "Pocco81/auto-save.nvim",
      config = function()
        require("auto-save").setup {
          enabled = false
          -- your config goes here
          -- or just leave it empty :)
        }
      end,
    },

    -- nvim-lsp for java
    use 'mfussenegger/nvim-jdtls',

    -- dashboard
    use {
      'nvimdev/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
          theme = 'hyper',
          config = {
            week_header = {
              enable = true,
            },
            shortcut = {
              { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
              {
                icon = ' ',
                icon_hl = '@variable',
                desc = 'Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
              },
              {
                desc = ' Apps',
                group = 'DiagnosticHint',
                action = 'Telescope app',
                key = 'a',
              },
              {
                desc = ' dotfiles',
                group = 'Number',
                action = 'Telescope dotfiles',
                key = 'd',
              },
            },
          },
        }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
    },
    use { 'michaelb/sniprun', run = 'sh ./install.sh' }
}
end)
