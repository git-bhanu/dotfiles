return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "css",
        "html",
        "scss",
        "tsx",
      },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "cssls",
        "emmet_language_server",
        "html",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cssls = {},
        emmet_language_server = {
          filetypes = {
            "css",
            "eruby",
            "html",
            "javascriptreact",
            "less",
            "sass",
            "scss",
            "typescriptreact",
            "vue",
          },
        },
        html = {},
      },
    },
  },
}
