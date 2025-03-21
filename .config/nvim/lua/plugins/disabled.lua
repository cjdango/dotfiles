return {
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
      dashboard = { enabled = false },
      scroll = { enabled = false },
    },
    keys = {
      { "<leader>fe", false, desc = "Explorer Snacks (root dir)" },
      { "<leader>fE", false, desc = "Explorer Snacks (cwd)" },
      { "<leader>e", false, desc = "Explorer Snacks (root dir)", remap = true },
      { "<leader>E", false, desc = "Explorer Snacks (cwd)", remap = true },
    },
  },
}
