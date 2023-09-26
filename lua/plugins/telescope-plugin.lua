return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  lazy = false,
  config = function()
    require("telescope").setup({
      pickers = {
        find_files = {
          theme = "dropdown",
          dotfiles = true
        },
        diagnostics = {
          theme = "dropdown",
        },
      },
      defaults = {
        file_ignore_patterns = { "node_modules", "plugged" },
      },
    })
  end,
  dependencies = { 'nvim-lua/plenary.nvim' }
}
