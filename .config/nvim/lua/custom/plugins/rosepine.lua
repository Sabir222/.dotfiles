return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        variant = 'main', -- auto, main, moon, or dawn
        dark_variant = 'main', -- main, moon, or dawn
        dim_inactive_windows = true,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },

        groups = {
          border = 'muted',
          link = 'iris',
          panel = 'surface',

          error = 'love',
          hint = 'iris',
          info = 'foam',
          note = 'pine',
          todo = 'rose',
          warn = 'gold',

          git_add = 'foam',
          git_change = 'rose',
          git_delete = 'love',
          git_dirty = 'rose',
          git_ignore = 'muted',
          git_merge = 'iris',
          git_rename = 'pine',
          git_stage = 'iris',
          git_text = 'rose',
          git_untracked = 'subtle',

          h1 = 'iris',
          h2 = 'foam',
          h3 = 'rose',
          h4 = 'gold',
          h5 = 'pine',
          h6 = 'foam',
        },

        palette = {
          -- Override the builtin palette per variant
          -- moon = {
          --     base = '#18191a',
          --     overlay = '#363738',
          -- },
        },

        highlight_groups = {
          -- WhichKey Customization with Hex Colors
          WhichKey = { fg = '#eb6f92' }, -- The key
          WhichKeyGroup = { fg = '#907aa9' }, -- For group names
          WhichKeyDesc = { fg = '#ea9d34' }, -- For descriptive text
          -- Telescope Customization with Hex Colors
          TelescopeNormal = { bg = '#1f1d2e' },
          TelescopeBorder = { bg = '#1f1d2e', fg = '#ea9d34' },
          TelescopePromptNormal = { bg = '#1f1d2e' },
          TelescopePromptBorder = { bg = '#1f1d2e', fg = '#ea9d34' },
          TelescopePromptTitle = { bg = '#1f1d2e', fg = '#ea9d34' },
          TelescopePreviewTitle = { bg = '#1f1d2e', fg = '#ea9d34' },
          TelescopeResultsTitle = { bg = '#1f1d2e', fg = '#ea9d34' },
          TelescopeSelection = { bg = '#f2e9e1', fg = '#191724' },
          TelescopeSelectionCaret = { fg = '#ea9d34' },
          TelescopeMatching = { fg = '#ea9d34', bold = true },
          -- Comment = { fg = "foam" },
          -- VertSplit = { fg = "muted", bg = "muted" },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          -- if highlight.undercurl then
          --     highlight.undercurl = false
          -- end
          --
          -- Change palette colour
          -- if highlight.fg == palette.pine then
          --     highlight.fg = palette.foam
          -- end
        end,
      }

      -- vim.cmd 'colorscheme rose-pine'
      -- vim.cmd("colorscheme rose-pine-main")
      -- vim.cmd("colorscheme rose-pine-moon")
      -- vim.cmd("colorscheme rose-pine-dawn")
    end,
  },
}
