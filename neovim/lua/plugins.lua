return require('packer').startup(function()

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }

  use { 'nvim-lua/completion-nvim' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- Prettification
  use 'junegunn/vim-easy-align'

  use 'lukas-reineke/format.nvim'


  -- tmux navigation
use({
    "aserowy/tmux.nvim",
    config = function()
        require("tmux").setup({
            -- overwrite default configuration
            -- here, e.g. to enable default bindings
            copy_sync = {
                -- enables copy sync and overwrites all register actions to
                -- sync registers *, +, unnamed, and 0 till 9 from tmux in advance
                enable = true,
            },
            navigation = {
                -- enables default keybindings (C-hjkl) for normal mode
                enable_default_keybindings = true,
            },
            resize = {
                -- enables default keybindings (A-hjkl) for normal mode
                enable_default_keybindings = true,
            }
        })
    end
})

-- REPL
use 'kassio/neoterm'

-- Nice Icons
use 'kyazdani42/nvim-web-devicons'

-- FastFolding
use 'Konfekt/FastFold'

-- Folding for python
use 'tmhedberg/SimpylFold'

-- Status line
use 'famiu/feline.nvim'

-- Git symbols
use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  }
}

-- Colorscheme
use 'shaunsingh/nord.nvim'

end)
