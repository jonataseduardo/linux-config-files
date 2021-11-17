local map = vim.api.nvim_set_keymap

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua,*.py,*cpp FormatWrite
augroup END
]], true)

map('n', '<silent> <leader>f', ':Format<CR>', { noremap = true })

require('formatter').setup({
  filetype = {
    python = {
      -- Configuration for psf/black
      function()
        return {
          exe = "black", -- this should be available on your $PATH
          args = { '-' },
          stdin = true,
        }
      end
    }
  }
})
