local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

require("mason-config")
require("lsp-config.lsp")
require("lsp-config.completion")
require("lsp-config.formatter")
require("telescope-config")
require("nvim-tree-config")
require("lualine-config")
require("nvim-treesitter-config")
require("neorg-config")
require("bufferline-config")
require("better-comments-config")
