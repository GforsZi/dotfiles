return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        always_show_bufferline = false,
        style_preset = "slope",
        separator_style = "slope",
        show_buffer_close_icons = false,
        show_close_icon = false,
        indicator = {
          style = "icon",
        },
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or " "
          return "" .. icon .. count
        end,
      },
    },
  },
}
