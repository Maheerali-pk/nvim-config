return {
  "folke/noice.nvim",
  opts = {
    -- Existing Noice configuration
    mappings = {
      -- Map Ctrl+j and Ctrl+k to navigate command-line history
      ["<C-j>"] = "cmdline_next",
      ["<C-k>"] = "cmdline_prev",
    },
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
  },
}
