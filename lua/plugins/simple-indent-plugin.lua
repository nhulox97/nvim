return {
  'lucastavaresa/simpleIndentGuides.nvim',
  event = "VeryLazy",
  config = function()
    vim.opt.list = true -- enable in all buffers
    require("simpleIndentGuides").setup("│", "·")
  end
}
