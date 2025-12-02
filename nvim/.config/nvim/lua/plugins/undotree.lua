-- ~/.config/nvim/lua/plugins/undotree.lua
return {
  {
    "mbbill/undotree",
    lazy = false,
    priority = 1000,
    keys = {
      -- Toggle Undotree with <leader>u (change if it conflicts with your setup)
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle Undotree" },
    },
    init = function()
      -- Enable persistent undo so Undotree can show history across sessions
      vim.opt.undofile = true

      -- Store undo history under Neovim state dir (portable across machines)
      local undodir = vim.fn.stdpath("state") .. "/undo"
      if vim.fn.isdirectory(undodir) == 0 then
        vim.fn.mkdir(undodir, "p")
      end
      vim.opt.undodir = undodir

      -- Optional visual/layout tweaks
      -- Put the undotree on the right side and auto-focus the diff panel
      vim.g.undotree_WindowLayout = 3 -- 3 = tree on right, diff on bottom-left
      vim.g.undotree_SplitWidth = 35 -- width of the undotree window
      vim.g.undotree_SetFocusWhenToggle = 1
      vim.g.undotree_DiffpanelHeight = 12
      vim.g.undotree_HelpLine = 0 -- hide help line if you prefer
    end,
  },
}
