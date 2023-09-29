return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  lazy = false,
  config = function()
    require("telescope").setup({
      pickers = {
        find_files = {
          dotfiles = true,
          hidden = true
        },
        diagnostics = {
          theme = "dropdown",
        },
      },
      defaults = {
        file_ignore_patterns = { "node_modules", "plugged" },
      },
      extensions = {
        package_info = {
          theme = 'ivy',
        }
      }
    })

    require("telescope").load_extension("package_info")
  end,
  dependencies = { 'nvim-lua/plenary.nvim' }
}
