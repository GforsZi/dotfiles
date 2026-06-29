return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off", -- "off" | "basic" | "standard" | "strict"
              reportUnknownVariableType = "none",
              reportUnknownMemberType = "none",
              reportUnknownArgumentType = "none",
              reportMissingTypeArgument = "none",
            },
          },
        },
      },
      intelephense = {
        settings = {
          intelephense = {
            diagnostics = {
              undefinedArguments = false,
              argumentCount = false,
            },
          },
        },
      },
      emmet_ls = {
        filetypes = {
          "astro",
          "blade",
          "css",
          "eruby",
          "html",
          "htmldjango",
          "javascriptreact",
          "less",
          "pug",
          "sass",
          "scss",
          "svelte",
          "typescriptreact",
          "vue",
        },
      },
    },
  },
}
