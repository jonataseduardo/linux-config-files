-- Install packer first
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  vim.cmd("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  vim.cmd "packadd packer.nvim"
  vim.cmd ":qa"
end

-- Install plugins
require('plugins')

-- Map leader to space
vim.g.mapleader = ' '

-- sensible defaults
require('settings')

-- personal keymaps (not plugins)
require('keymaps')

-- colorscheme:
vim.cmd[[colorscheme nord]]

-- Nice icons (mainly for buffer line)
require('nvim-web-devicons').get_icons()

-- Buffer line
require('feline').setup({preset = 'nord'})

-- Setup Lua language server using submodule
-- require('lsp_lua')

-- Another option is to groups configuration in one folder
require('config.neoterm')
require('config.format')

-- OR you can invoke them individually here
--require('config.colorscheme')  -- color scheme
--require('config.completion')   -- completion
--require('config.fugitive')     -- fugitive


