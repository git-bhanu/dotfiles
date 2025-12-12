return {
  -- add gruvbox
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        -- see below
      })
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
