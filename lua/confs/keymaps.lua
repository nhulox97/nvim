local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<CR>", opts)
vim.keymap.set("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<CR>", opts)
vim.keymap.set("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<CR>", opts)
vim.keymap.set("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<CR>", opts)

vim.keymap.set("n", "<leader>oo", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>of", ":NvimTreeFocus<CR>", opts)

vim.keymap.set("n", "<leader>s", ":w<CR>", opts)
vim.keymap.set("n", "<leader>x", ":q<CR>", opts)
vim.keymap.set("n", "<leader>w", ":wq<CR>", opts)
vim.keymap.set("n", "<leader>qa", ":qa<CR>", opts)

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
