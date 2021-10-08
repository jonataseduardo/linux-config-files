local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

-- Save with w!! files with sudo permition
map('c', 'w!!', "execute 'silent! write sudo tee % >/dev/null' <bar> edit!", {noremap = true})


-- Spell
map('n', '<leader>pt',  ':setlocal spell! spelllang=pt<cr>', {noremap = true})
map('n', '<leader>en', ':setlocal spell! spelllang=en<cr>', {noremap = true})
