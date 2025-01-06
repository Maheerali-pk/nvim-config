-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local noice = require("noice")
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Mouse scroll bindings
keymap.set("n", "<C-ScrollWheelUp>", ":ZoomIn<CR>", { noremap = true, silent = true })
keymap.set("n", "<C-ScrollWheelDown>", ":ZoomOut<CR>", { noremap = true, silent = true })
keymap.set("i", "jk", "<Esc>")
keymap.set("n", "j", "jzz")
keymap.set("n", "k", "kzz")
keymap.set("n", "<C-`>", "<C-/>")

keymap.set("n", "<leader><leader>s", function()
  vim.cmd("wa")
  noice.notify("All files saved", "info", { title = "Save all" })
end, { desc = "Save all files and show notification" })
keymap.set("n", "<leader><leader>q", ":qa<CR>")
keymap.set("n", "<leader>q", "<cmd>bdelete<CR> ")
keymap.set("n", "<C-/>", ":ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })
keymap.set("i", "<C-/>", ":ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })
keymap.set("c", "<C-/>", ":ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })
keymap.set("n", "<leader>/", ":ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })
keymap.set("n", "<tab>", ":bnext<Return>", opts)
keymap.set("n", "<s-tab>", ":bprev<Return>", opts)
keymap.set("n", "<leader>s", ":w<CR>", opts)
keymap.set("n", "<leader>s", ":w<CR>", opts)
keymap.set("n", "<C-1>", ":bnext<Return>", opts)
keymap.set("n", "<C-p>", ":WorkspacesOpen<CR>", opts)
keymap.set("n", "<C-[>", "<C-c>", opts)
keymap.set("i", "<C-[>", "<C-c>", opts)

keymap.set("c", "<C-j>", "<Down>")
keymap.set("c", "<C-k>", "<Up>")
keymap.set("c", "<C-h>", "<Left>")
keymap.set("c", "<C-w>", "<Right>")
keymap.set("c", "<C-w>", "<S-Right>")
keymap.set("c", "<C-b>", "<S-Left>")
