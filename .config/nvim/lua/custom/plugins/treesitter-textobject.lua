-- WARNING: dont forget to add  'nvim-treesitter/nvim-treesitter-textobjects' in treesitter cfg dependencies in init.lua
return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  lazy = true,
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('nvim-treesitter.configs').setup {
      textobjects = {
        select = {
          enable = true,
          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            ['aa'] = '@parameter.outer',
            ['ia'] = '@parameter.inner',
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
            ['ii'] = '@conditional.inner',
            ['ai'] = '@conditional.outer',
            ['il'] = '@loop.inner',
            ['al'] = '@loop.outer',
            ['at'] = '@comment.outer',
          },
        },
        -- move = {
        --   enable = true,
        --   set_jumps = true, -- whether to set jumps in the jumplist
        --   goto_next_start = {
        --     [']f'] = '@function.outer',
        --     [']]'] = '@class.outer',
        --   },
        --   goto_next_end = {
        --     [']F'] = '@function.outer',
        --     [']['] = '@class.outer',
        --   },
        --   goto_previous_start = {
        --     ['[f'] = '@function.outer',
        --     ['[['] = '@class.outer',
        --   },
        --   goto_previous_end = {
        --     ['[F'] = '@function.outer',
        --     ['[]'] = '@class.outer',
        --   },
        -- },
        -- swap = {
        --   enable = true,
        --   swap_next = {
        --     ['<leader>a'] = '@parameter.inner',
        --   },
        --   swap_previous = {
        --     ['<leader>A'] = '@parameter.inner',
        --   },
        -- },
      },
    }
  end,
}
