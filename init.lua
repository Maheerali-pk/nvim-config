-- bootstrap lazy.nvim, LazyVim and your plugins
_G.font_size = 12 -- Set your default font size
require("config.lazy")

-- Zooming functions

local function get_guifont(size)
  local font_name = "firacode nerd font" -- replace with your font name
  return font_name .. ":h" .. size
end

local function zoom_in()
  _G.font_size = _G.font_size + 1
  return get_guifont(font_size)
end

local function zoom_out()
  _G.font_size = _G.font_size - 1
  return get_guifont(_G.font_size)
end

vim.api.nvim_create_user_command("ZoomIn", function()
  vim.opt.guifont = zoom_in()
end, {})
vim.api.nvim_create_user_command("ZoomOut", function()
  vim.opt.guifont = zoom_out()
end, {})

vim.api.nvim_set_keymap("c", "<C-j>", 'v:lua.get_wildmenu_key("<right>", "<down>")', { expr = true })
vim.api.nvim_set_keymap("c", "<C-k>", 'v:lua.get_wildmenu_key("<left>", "<up>")', { expr = true })
