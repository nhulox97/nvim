return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      git = {
        enable = true,
      },
      renderer = {
        highlight_git = true,
        root_folder_modifier = ":t",
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            git = {
              unstaged = "󱔀",
              staged = "",
              unmerged = "",
              renamed = "",
              deleted = "",
              untracked = "",
              ignored = "",
            },
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
            },
          },
        },
      },
      view = {
        side = "right",
      },
      filters = {
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        git_ignored = false
      },
    }
  end,
}
