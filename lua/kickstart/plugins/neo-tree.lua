-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
    {
      '<leader>ge',
      function()
        require('neo-tree.command').execute { source = 'git_status', toggle = true }
      end,
      desc = 'Git Explorer',
    },
  },
  opts = {
    sources = { 'filesystem', 'buffers', 'git_status' },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  window = {
    mappings = {
      ['<space>'] = 'none',
      ['Y'] = {
        function(state)
          local node = state.tree:get_node()
          local path = node:get_id()
          vim.fn.setreg('+', path, 'c')
        end,
        desc = 'Copy Path to Clipboard',
      },
      ['O'] = {
        function(state)
          require('lazy.util').open(state.tree:get_node().path, { system = true })
        end,
        desc = 'Open with System Application',
      },
    },
  },
  default_component_configs = {
    indent = {
      with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = '',
      expander_expanded = '',
      expander_highlight = 'NeoTreeExpander',
    },
    git_status = {
      symbols = {
        unstaged = '󰄱',
        staged = '󰱒',
      },
    },
  },
}
