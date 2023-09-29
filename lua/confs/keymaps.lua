---@diagnostic disable: undefined-global
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<CR>", opts)
vim.keymap.set("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<CR>", opts)
vim.keymap.set("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<CR>", opts)
vim.keymap.set("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<CR>", opts)

vim.keymap.set("n", "<leader>tf", ":Neotree toggle current reveal_force_cwd right<CR>", opts)
vim.keymap.set("n", "<leader>tb", ":Neotree toggle show buffers right<CR>", opts)
vim.keymap.set("n", "<leader>tg", ":Neotree float git_status<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bd<CR>", opts)
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("n", "<leader>wq", ":wq<CR>", opts)
vim.keymap.set("n", "<leader>wa", ":wall<CR>", opts)
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)
vim.keymap.set("n", "<leader>qa", ":qall<CR>", opts)

vim.cmd([[
  nmap <Leader>z 1z=
]])

vim.keymap.set("n", "<leader>[", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>]", ":bnext<CR>", opts)
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts)         --> jumps to the definition of the symbol under the cursor
vim.keymap.set("n", "H", ":lua vim.lsp.buf.hover()<CR>", opts)                --> information about the symbol under the cursos in a floating window
vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)     --> lists all the implementations for the symbol under the cursor in the quickfix window
vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts) --> selects a code action available at the current cursor position
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)          --> lists all the references to the symbl under the cursor in the quickfix window
vim.keymap.set("n", "<leader>ld", ":lua vim.diagnostic.open_float()<CR>", opts)
vim.keymap.set("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", opts)
vim.keymap.set("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", opts)
vim.keymap.set("n", "<leader>lq", ":lua vim.diagnostic.setloclist()<CR>", opts)
vim.keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.formatting()<CR>", opts) --> formats the current buffer

vim.keymap.set("n", "<leader>ng", ":Neogit<CR>", opts)

-- package-info
-- Show dependency versions
vim.keymap.set({ "n" }, "<LEADER>ns", require("package-info").show, { silent = true, noremap = true })
-- Hide dependency versions
vim.keymap.set({ "n" }, "<LEADER>nc", require("package-info").hide, { silent = true, noremap = true })
-- Toggle dependency versions
vim.keymap.set({ "n" }, "<LEADER>nt", require("package-info").toggle, { silent = true, noremap = true })
-- Update dependency on the line
vim.keymap.set({ "n" }, "<LEADER>nu", require("package-info").update, { silent = true, noremap = true })
-- Delete dependency on the line
vim.keymap.set({ "n" }, "<LEADER>nd", require("package-info").delete, { silent = true, noremap = true })
-- Install a new dependency
vim.keymap.set({ "n" }, "<LEADER>ni", require("package-info").install, { silent = true, noremap = true })
-- Install a different dependency version
vim.keymap.set({ "n" }, "<LEADER>np", require("package-info").change_version, { silent = true, noremap = true })

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
