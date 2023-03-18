local set = vim.opt

vim.cmd([[
    autocmd BufEnter * :lua require('lazygit.utils').project_root_dir()
]])

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.autoindent = true

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.termguicolors = true
set.showmode = false
set.splitbelow = true
set.splitright = true
set.wrap = false
set.breakindent = true
set.scrolloff = 5
set.fileencoding = "utf-8"
set.conceallevel = 2

set.number = true
set.relativenumber = true
set.cursorline = true
set.wildmenu = true
set.completeopt = "menuone,noselect"

set.hidden = true
set.mouse = "a"

set.fillchars = "eob: "

set.clipboard:append("unnamedplus")
set.iskeyword:append("-")

vim.cmd("colorscheme carbonfox")

vim.g.vimtex_view_method = "zathura"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
