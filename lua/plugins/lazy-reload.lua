return {
  "MaximilianLloyd/lazy-reload.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    command_name = "ReloadPlugin",
  },
  keys = {
    -- Opens the command.
    { "<leader>rl", "<cmd>lua require('lazy-reload').feed()<cr>", desc = "Reload a plugin" },
  },

  command_name = "ReloadPlugin",
}
