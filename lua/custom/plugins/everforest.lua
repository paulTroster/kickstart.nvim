return {
  'sainnhe/everforest',
  lazy = false,
  priority = 1000,
  config = function()
    -- Enable true color support
    if vim.fn.has 'termguicolors' == 1 then
      vim.o.termguicolors = true
    end

    -- Set background to light
    vim.o.background = 'dark'

    -- Global variables for Everforest
    vim.g.everforest_background = 'hard' -- Options: 'hard', 'medium', 'soft'
    vim.g.everforest_better_performance = 1 -- Optimize for speed
    vim.g.everforest_enable_italic = true -- Enable italics

    -- Load the colorscheme
    vim.cmd.colorscheme 'everforest'

    -- Lightline colorscheme (if using lightline)
    vim.g.lightline = { colorscheme = 'everforest' }
  end,
}
