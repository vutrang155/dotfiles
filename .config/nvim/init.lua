require("config.lazy")
require("config.lsp")

require("config.bufferline")
require("config.lualine")
require("config.nvim-treesitter")
require("config.telescope")
require("config.which-key")

vim.o.number = true
vim.o.rnu = true
vim.o.cursorline = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.cmd 'colorscheme catppuccin'
