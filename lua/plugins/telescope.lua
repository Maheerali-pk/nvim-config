return {
  {
    "nvim-telescope/telescope.nvim",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-media-files.nvim",
      "nvim-lua/popup.nvim",
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {

          mappings = {
            i = {
              ["<C-[>"] = "close",
              ["<C-k>"] = "move_selection_worse",
              ["<C-j>"] = "move_selection_better",
            },
            n = {
              ["<C-[>"] = "close",
            },
          },
        },
        extensions = {
          workspaces = {
            -- keep insert mode after selection in the picker, default is false
            keep_insert = true,
            -- Highlight group used for the path in the picker, default is "String"
            path_hl = "String",
          },
        },
      })
    end,
  },
}
