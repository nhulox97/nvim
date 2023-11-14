return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', 'meuter/lualine-so-fancy.nvim' },
  },
  lazy = false,
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = 'horizon', -- auto | horizon | gruvbox_dark | molokai | iceberg_dark | wombat | modus-vivendi | material
        -- component_separators = { left = '', right = '' },
        component_separators = { left = '|', right = '|' },
        -- component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {
          { "fancy_mode", width = 8 }
        },
        lualine_b = {
          { "fancy_branch" },
          { "fancy_diff" },
        },
        lualine_c = {
          { "fancy_cwd", substitute_home = true }
        },
        lualine_x = {
          { "fancy_macro" },
          { "fancy_diagnostics" },
          { "fancy_searchcount" },
          { "fancy_location" },
        },
        lualine_y = {
          { "fancy_filetype" }
        },
        lualine_z = {
          { "fancy_lsp_servers" }
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
      disabled_filetypes = {
        'neo-tree'
      }
    })
  end
}
