vim.cmd('autocmd!')

vim.wo.number = true
vim.opt.title = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.si = true
vim.opt.ai = true
vim.opt.swapfile = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.smarttab = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.breakindent = true
vim.opt.relativenumber = true
vim.opt.wildignore:append { '*/node_modules/*', '*/.git/*', '*/.cache/*', '*/.DS_Store' }
-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#3B4252", fg = "#5E81AC" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#3B4252" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#3B4252" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#3B4252" })

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
