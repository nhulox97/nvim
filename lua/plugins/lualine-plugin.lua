return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
  lazy = false,
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = 'auto',
        -- component_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'encoding', 'fileformat' },
        lualine_c = { 'filetype', 'filename', 'diagnostics' },
        lualine_x = { 'diff' },
        lualine_y = { 'branch' },
        lualine_z = { 'progress', 'location' }
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
      extensions = {}
    })
  end
}
