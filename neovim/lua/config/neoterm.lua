
-- Neoterm  config
--" This is not working (dont know why)
--" let g:neoterm_direct_open_repl = 1
--" let g:neoterm_repl_python = 'ipython'
--" let g:neoterm_repl_enable_ipython_paste_magic = 0
--" let g:neoterm_size=40

--"Workaround to open ipython and r in the right split' 
--au FileType python nnoremap <leader>s :T ipython --no-autoindent<CR><C-w>R
--au FileType r nnoremap <leader>s :T R<CR><C-w>R
--au FileType sh nnoremap <leader>s :Tnew<CR><C-w>R
--nnoremap <leader>q :Tclose<CR>
--nnoremap <Space> :TREPLSendLine<CR>
--vnoremap <Space> :TREPLSendSelection<CR>


local map = vim.api.nvim_set_keymap
local cmd = vim.cmd


cmd("let g:neoterm_default_mod = 'vertical'")
--cmd("let g:neoterm_direct_open_repl = 1")

options = { noremap = true }
map('n', '<leader>tt', ':Tnew<CR><C-w>R', options)
map('n', '<leader>q', ':Tclose!<CR>', options)
map('n', '<leader>l', ':TREPLSendLine<CR>', options)
map('v', '<leader>l', ':TREPLSendSelection<CR>', options)
map('n', '<leader>f', ':TREPLSendFile<CR>', options)
map('t', '<Esc>', '<C-\\><C-n>', options) --Esc exit terminal mode


cmd('au FileType python nnoremap <leader>t :T ipython --no-autoindent<CR><C-w>R')
cmd('au FileType r nnoremap <leader>t :T R<CR><C-w>R')







