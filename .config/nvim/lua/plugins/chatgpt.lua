return {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>cg", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
    },
    opts = {
      openai_params = {
        model = "gpt-4",
      },
    },
  },
}
