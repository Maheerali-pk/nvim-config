return {
  "easymotion/vim-easymotion",
  config = function()
    -- Basic EasyMotion setup
    vim.g.EasyMotion_do_mapping = 0 -- Disable default mappings
    vim.keymap.set("n", "<Leader><Leader>w", "<Plug>(easymotion-w)", { desc = "EasyMotion - Word" })
    vim.keymap.set("n", "<Leader><Leader>e", "<Plug>(easymotion-e)", { desc = "EasyMotion - End of Word" })
    vim.keymap.set("n", "<Leader><Leader>b", "<Plug>(easymotion-b)", { desc = "EasyMotion - Backward Word" })
    vim.keymap.set("n", "<Leader><Leader>j", "<Plug>(easymotion-j)", { desc = "EasyMotion - Down" })
    vim.keymap.set("n", "<Leader><Leader>k", "<Plug>(easymotion-k)", { desc = "EasyMotion - Up" })

    -- Customize EasyMotion highlight
  end,
}
