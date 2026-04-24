return {
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      filetypes = { "css", "html", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
      user_default_options = {
        css = true,
        css_fn = true,
        mode = "background",
        names = false,
        tailwind = true,
      },
    },
  },
}
