return {
  -- CONFIG: LUALINE
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = {
        theme = "auto",
        component_separators = { left = "│", right = "│" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
      }

      opts.sections.lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } }
      opts.sections.lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } }
    end,
  },
}
