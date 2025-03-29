-- Main plugin configuration file that imports all individual plugin configs
return {
  -- Import all plugins from their individual files
  require 'custom.plugins.dooing',
  require 'custom.plugins.vim-be-good',
  require 'custom.plugins.autopairs',
  require 'custom.plugins.copilot',
  require 'custom.plugins.neo-tree',
  require 'custom.plugins.everforest',
  require 'custom.plugins.vgit',
  require 'custom.plugins.indent_line',
  -- require 'custom.plugins.lint',
}
