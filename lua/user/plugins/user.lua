return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    -- jk長押しでカーソル加速
    "rhysd/accelerated-jk",
    event = "CursorMoved",
    config = function()
      local option = { noremap = true, silent = true }
      vim.keymap.set({ "n" }, "j", "<Plug>(accelerated_jk_gj)", option)
      vim.keymap.set({ "n" }, "k", "<Plug>(accelerated_jk_gk)", option)
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({})
      vim.keymap.set({ "n" }, "<Leader>ck", "<cmd>:ChatGPT<CR>")
      vim.keymap.set({ "n" }, "<Leader>cj", "<cmd>:ChatGPTActAs<CR>")
      vim.keymap.set({ "n" }, "<Leader>ci", "<cmd>:ChatGPTEditWithInstructions<CR>")
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  }
}
