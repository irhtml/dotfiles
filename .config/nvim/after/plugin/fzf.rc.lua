local status, fzf = pcall(require, "fzf-lua")
if (not status) then return end
fzf.setup {
  winopts = {
    win_height = 0.7,
    win_width = 0.8,
    win_border = true,
    preview = {
      default = "bat"
    }
  },
  fzf_opts = {
    ['--layout'] = false,
  },
  files = {
    cmd = "rg --files --hidden -g '!{.git,node_modules}/*'",
  },
}

fzf.all_lines = function()
  fzf.files {
    cmd = 'rg --hidden --line-number '
        .. '--no-heading --vimgrep '
        .. '--smart-case --trim '
        .. "-g '!{.git,node_modules}/*' '^.*[A-z]+.*'",
  }
end

vim.api.nvim_set_keymap(
  'n',
  '<Leader>fb',
  "<cmd>lua require('fzf-lua').buffers()<CR>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<Leader>ff',
  "<cmd>lua require('fzf-lua').files()<CR>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<Leader>r',
  "<cmd>lua require('fzf-lua').oldfiles()<CR>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<Leader>sa',
  [[<cmd>lua require('fzf-lua').all_lines()<CR>]],
  { noremap = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<Leader>fg',
  [[<cmd>lua require('fzf-lua').grep()<CR>]],
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<Leader>fw',
  [[<cmd>lua require('fzf-lua').grep_cword()<CR>]],
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<Leader>fr',
  [[<cmd>lua require('fzf-lua').resume()<CR>]],
  { noremap = true }
)
