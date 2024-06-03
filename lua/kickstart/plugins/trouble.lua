return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    { '<leader>xx', '<cmd>TroubleToggle<CR>', desc = 'Open/Close trouble list' },
    { '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<CR>', desc = 'Open trouble workspace diagnostics' },
    { '<leader>xd', '<cmd>TroubleToggle document_diagnostics<CR>', desc = 'Open trouble document diagnostics' },
    { '<leader>xq', '<cmd>TroubleToggle quickfix<CR>', desc = 'Open trouble quickfix list' },
    { '<leader>xl', '<cmd>TroubleToggle loclist<CR>', desc = 'Open trouble location list' },
    { '<leader>xt', '<cmd>TroubleToggle<CR>', desc = 'Open todods in trouble' },
  },
}
