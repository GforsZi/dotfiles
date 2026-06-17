return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      enabled = true,
      autostart = true,
      preset = {
        -- Mengatur tombol menu utama (Termasuk Recent Files / Oldfiles)
        header = [[
                                                                   
      ████ ██████           █████      ██                 btw
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████
]],
      },

      sections = {
        { section = "header" },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { section = "startup" },
      },
    },
    explorer = {
      enabled = true,
      trash = true,
    },
    -- picker = {
    --   sources = {
    --     explorer = {
    --       hidden = true, -- Show hidden/dotfiles
    --       ignored = true, -- Respect .gitignore (optional, defaults to false)
    --     },
    --   },
    -- },
    picker = {
      sources = {
        files = {
          hidden = true,
          exclude = { ".git", ".DS_Store", "node_modules" },
        },
        explorer = {
          hidden = true,
          ignored = true,
          actions = {
            bufadd = function(_, item)
              if vim.fn.bufexists(item.file) == 0 then
                local buf = vim.api.nvim_create_buf(true, false)
                vim.api.nvim_buf_set_name(buf, item.file)
                vim.api.nvim_buf_call(buf, vim.cmd.edit)
              end
            end,
            confirm_nofocus = function(picker, item)
              if item.dir then
                picker:action("confirm")
              else
                picker:action("bufadd")
              end
            end,
          },
          win = {
            list = {
              keys = {
                ["l"] = "confirm_nofocus",
                ["L"] = "confirm",
              },
            },
          },
          auto_close = true,
          layout = {
            cycle = true,
            preview = false, ---@diagnostic disable-line: assign-type-mismatch
            layout = {
              box = "horizontal",
              position = "float",
              height = 0.95,
              width = 0,
              border = "rounded",
              {
                box = "vertical",
                width = 40,
                min_width = 40,
                { win = "input", height = 1, title = "{title} {live} {flags}", border = "single" },
                { win = "list" },
              },
              { win = "preview", width = 0, border = "left" },
            },
          },
        },
      },
    },
  },
}
