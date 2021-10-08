--Lua:
vim.cmd[[colorscheme nord]]

-- Map leader to space
vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

-- sensible defaults
require('settings')

-- personal keymaps (not plugins)
require('keymaps')

-- Buffer line
require('feline').setup({preset = 'nord'})

require('nvim-web-devicons').get_icons()

-- Auto install packer.nvim if not exists
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

-- Install plugins
require('plugins')

-- Key mappings
-- require('keymappings')

-- Setup Lua language server using submodule
-- require('lsp_lua')

-- Another option is to groups configuration in one folder
require('config.neoterm')

-- OR you can invoke them individually here
--require('config.colorscheme')  -- color scheme
--require('config.completion')   -- completion
--require('config.fugitive')     -- fugitive


