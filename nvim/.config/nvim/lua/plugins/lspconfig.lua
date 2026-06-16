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
    },
  },
}
