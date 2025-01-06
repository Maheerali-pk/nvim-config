return {

  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox

  {
    "sainnhe/gruvbox-material",
  },
  {
    "marko-cerovac/material.nvim",
  },

  {
    "AlexvZyl/nordic.nvim",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "vague2k/vague.nvim",
  },
  { "olimorris/onedarkpro.nvim" },
  { "rmehri01/onenord.nvim" },
  { "sonph/onehalf" },
  { "Mofiqul/vscode.nvim" },
  {
    {
      "folke/tokyonight.nvim",
      config = function(_, opts)
        require("tokyonight").setup({
          style = "moon", -- Choose the style: storm, moon, or night
          on_colors = function(colors) end,
          on_highlights = function(hl, colors)
            -- Example: Change Comment highlight group to use the modified color
            hl["@tag"] = { fg = colors.red }
            hl["@tag.tsx"] = {
              fg = "#F6BB5E",
            }
            hl["@tag.javascript"] = {
              fg = colors.red1,
            }
            hl["@label"] = {
              fg = "#ffffff",
            }
            hl["Type"] = {
              fg = "#F6BB5E",
            }
            hl["Special"] = {
              fg = colors.red,
            }
          end,
        })
        -- Apply the theme
      end,
    },
  },
}
