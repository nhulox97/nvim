return {
  'HiPhish/rainbow-delimiters.nvim',
  config = function()
    local rb = require('rainbow-delimiters')
    require('rainbow-delimiters.setup').setup({
      strategy = {
        [''] = rb.strategy['global'],
        vim = rb.strategy['local'],
      },
      query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
      },
      highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
      }
    })
  end
}
