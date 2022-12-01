local keymap = vim.keymap
local opts = { noremap = true, silent = true }
keymap.set('', '<Space>', '<Nop>', opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap.set('n', '<CapsLk>', '<Esc>')

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
--keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
-- keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<leader>w<left>', '<C-w><')
keymap.set('n', '<leader>w<right>', '<C-w>>')
keymap.set('n', '<leader>w<up>', '<C-w>+')
keymap.set('n', '<leader>w<down>', '<C-w>-')

-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', 'ff', builtin.find_files, {})
keymap.set('n', 'fg', builtin.live_grep, {})
keymap.set('n', 'fb', builtin.buffers, {})
keymap.set('n', 'fh', builtin.help_tags, {})
-- NvimTree
keymap.set('n', '<C-e>', ':NvimTreeToggle<CR>', opts)
-- Shift tab / tab
keymap.set('n', '<Tab>', '>>', opts)
keymap.set('n', '<S-Tab>', '<<', opts)
keymap.set('i', '<S-Tab>', '<C-d>', opts)
-- Moving blocks of text
keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>===', opts)
keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>===', opts)
keymap.set('n', '<A-j>', ':m .+1<CR>==', opts)
keymap.set('n', '<A-k>', ':m .-2<CR>==', opts)
keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)
-- Copilot
keymap.set('i', '<leader>cn', '<Plug>(copilot-next)', opts)
keymap.set('i', '<leader>cp', '<Plug>(copilot-previous)', opts)
keymap.set('i', '<leader>cs', '<Plug>(copilot-suggest)', opts)

-- Ctrl S Save
keymap.set('n', '<C-s>', ':w<CR>', opts)
keymap.set('i', '<C-s>', '<Esc>:w<CR>', opts)
keymap.set('v', '<C-s>', '<Esc>:w<CR>', opts)

-- Soure MYVIMRC
keymap.set('n', '<leader><leader>', ':source $MYVIMRC<CR>', opts)
