local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup("plugins")

local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  local opts = { noremap = true, silent = true }

  buf_set_keymap("n", "<leader>bn", ":bNext<CR>", opts) --> renaname old_fname to new_fname
end

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  local opts = { noremap = true, silent = true }

  buf_set_keymap("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts)         --> jumps to the definition of the symbol under the cursor
  buf_set_keymap("n", "H", ":lua vim.lsp.buf.hover()<CR>", opts)                --> information about the symbol under the cursos in a floating window
  buf_set_keymap("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)     --> lists all the implementations for the symbol under the cursor in the quickfix window
  buf_set_keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts) --> selects a code action available at the current cursor position
  buf_set_keymap("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)          --> lists all the references to the symbl under the cursor in the quickfix window
  buf_set_keymap("n", "<leader>ld", ":lua vim.diagnostic.open_float()<CR>", opts)
  buf_set_keymap("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", opts)
  buf_set_keymap("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", opts)
  buf_set_keymap("n", "<leader>lq", ":lua vim.diagnostic.setloclist()<CR>", opts)
  buf_set_keymap("n", "<leader>lf", ":lua vim.lsp.buf.formatting()<CR>", opts) --> formats the current buffer
end

---@diagnostic disable-next-line: undefined-global
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("lspconfig")["lua_ls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})


require("lspconfig")["tsserver"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

--[[ require("lspconfig")["lsp_lua"].setup({ ]]
--[[ 	on_attach = on_attach, ]]
--[[ 	capabilities = capabilities, ]]
--[[ }) ]]

require("lspconfig")["vimls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["yamlls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["rust_analyzer"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["prismals"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["jsonls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["bashls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["dockerls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["golangci_lint_ls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["tailwindcss"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["docker_compose_language_service"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

require("lspconfig")["eslint"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
