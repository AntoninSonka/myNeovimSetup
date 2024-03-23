vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
local options = { noremap = true }

vim.keymap.set("i", "qq", "<Esc>")

vim.keymap.set("n", "<leader>v", ':vsp<CR><C-w>l:term<CR>:set nonumber<CR>:set norelativenumber<CR>:set signcolumn=no<CR>i')
vim.keymap.set("n", "<leader>h", ':sp<CR><C-w>j:term<CR>:set nonumber<CR>:set norelativenumber<CR>:set signcolumn=no<CR>i')

vim.keymap.set("n", "<leader>t", ':term<CR>:set nonumber<CR>:set norelativenumber<CR>:set signcolumn=no<CR>i');


vim.keymap.set("n", "H", "Hzz")
vim.keymap.set("n", "L", "Lzz")

vim.keymap.set("v", "H", "Hzz")
vim.keymap.set("v", "L", "Lzz")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)

vim.keymap.set("n", "<leader>x", vim.cmd.bdelete)

