return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
    {
      's1n7ax/nvim-window-picker', -- for open_with_window_picker keymaps
      version = '2.*',
      config = function()
        require('window-picker').setup {
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', 'quickfix' },
            },
          },
        }
      end,
    },
  },
  lazy = false,
  config = function()
    require('neo-tree').setup {
      close_if_last_window = false,
      popup_border_style = 'rounded',
      enable_git_status = true,
      enable_diagnostics = true,
      open_files_do_not_replace_types = { 'terminal', 'trouble', 'qf' },
      open_files_using_relative_paths = false,
      sort_case_insensitive = false,
      sort_function = nil,
      
      -- Rest of the neo-tree configuration...
      -- Note: This file would contain the entire neo-tree configuration shown in the original file
      
      -- At the end, set up the key mapping to toggle neo-tree
      default_component_configs = {
        -- ... existing configs ...
      },
      window = {
        -- ... existing window configs ...
      },
      filesystem = {
        -- ... existing filesystem configs ...
      },
      buffers = {
        -- ... existing buffers configs ...
      },
      git_status = {
        -- ... existing git_status configs ...
      },
    }

    vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { noremap = true, silent = true })
  end,
}
