-- Line Numbers/sign col
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.signcolumn = "yes"

-- Tabs / indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true

-- Backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = false

-- Highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.colorcolumn = "120"

-- Behaviour
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50

-- ui
vim.opt.laststatus = 0
vim.opt.wrap = false

-- Keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap
-- Space
keymap("", "<Space>", "<Nop>", opts)
-- Window Navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)
-- Tab navigation
keymap("n", "<leader>n", ":tabnew<CR>", opts)
keymap("n", "<S-l>", ":tabNext<CR>", opts)
keymap("n", "<S-h>", ":tabprevious<CR>", opts)
-- Better Terminal Navigation
keymap("t", "<ESC>", "<C-\\><C-N>", term_opts)
