return {
  'atiladefreitas/dooing',

  config = function()
    -- Setup <leader> + d to toggle dooing
    vim.keymap.set('n', '<leader>g', ':Dooing<CR>', { noremap = false, silent = true })

    require('dooing').setup {
      -- your custom config here (optional)
    }
  end,
}
