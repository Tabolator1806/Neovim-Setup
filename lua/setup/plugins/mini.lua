return {
    {
	"echasnovski/mini.nvim",
	config = function()
	    --statusline 
	    local statusline = require 'mini.statusline'
	    statusline.setup { use_icons = true }
	    --comments
	    local comments = require 'mini.comment'
	    comments.setup {
		mappings = {
		    comment_line = '<leader>/'
		},
	    }
	    --pairs
	    local pairs = require 'mini.pairs'
	    pairs.setup {
        modes = { insert = true, command = false, terminal = false },

        mappings = {
          ['('] = { action = 'open', pair = '()', neigh_pattern = '^[^\\]' },
          ['['] = { action = 'open', pair = '[]', neigh_pattern = '^[^\\]' },
          ['{'] = { action = 'open', pair = '{}', neigh_pattern = '^[^\\]' },

          [')'] = { action = 'close', pair = '()', neigh_pattern = '^[^\\]' },
          [']'] = { action = 'close', pair = '[]', neigh_pattern = '^[^\\]' },
          ['}'] = { action = 'close', pair = '{}', neigh_pattern = '^[^\\]' },

          ['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '^[^\\]',   register = { cr = false } },
          ["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '^[^%a\\]', register = { cr = false } },
          ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '^[^\\]',   register = { cr = false } },
      },
    }	
    --move
    local move = require 'mini.move'
    move.setup {
      mappings = {
        left = '<M-h>',
        right = '<M-l>',
        up = '<M-k>',
        down = '<M-j>',

        line_left = '<M-h>',
        line_right = '<M-l>',
        line_up = '<M-k>',
        line_down = '<M-j>',
      },
      options = {
        reindent_linewise = true
      }
    }
    --surround
    local surround = require "mini.surround"
    surround.setup {
      mappwngs={
        add = 'sa',
        delete = 'sd',
        replace = 'sr',
      },
      n_lwnes=20,
      respect_selection_type = false,
      search_method = 'cover'
    }
end
    }
}

