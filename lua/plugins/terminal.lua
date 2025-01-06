return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20, -- Default size for horizontal and vertical splits
      open_mapping = [[<c-/>]], -- Open terminal with Ctrl + t
      hide_numbers = true, -- Hide line numbers in terminal buffers
      shade_filetypes = {},
      shade_terminals = true, -- Apply shading to terminal windows
      shading_factor = 2, -- The degree of shading
      start_in_insert = true, -- Start terminals in insert mode
      insert_mappings = true, -- Use open mapping in insert mode
      terminal_mappings = true, -- Use terminal mappings in terminal mode
      persist_size = true, -- Remember terminal size between sessions
      direction = "float", -- Options: 'vertical', 'horizontal', 'tab', 'float'
      close_on_exit = true, -- Automatically close terminal when the process exits
      float_opts = {
        border = "curved", -- Options: 'single', 'double', 'shadow', 'curved'
        winblend = 3, -- Transparency level
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })

    -- Keybindings for different terminals
    vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Horizontal Terminal" })
    vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { desc = "Vertical Terminal" })
    vim.keymap.set("n", "<leader>/", ":ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })

    vim.keymap.set("n", "<c-/>", ":ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })
  end,
}
