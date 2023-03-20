return function()
  -- Workaround for indent_blankline color
  local whitespace_color = vim.fn.synIDattr(vim.fn.hlID('Whitespace'), 'fg')
  vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = whitespace_color, nocombine = true })

  -- Auto resize split when window os resized
  vim.api.nvim_create_autocmd('VimResized', { command = 'wincmd =' })

  -- Add new mappings using hop
  local hop = require('hop')
  local directions = require('hop.hint').HintDirection

  vim.keymap.set('', 'f', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
  end, { remap = true })

  vim.keymap.set('', 'F', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
  end, { remap = true })

  vim.keymap.set('', 't', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
  end, { remap = true })

  vim.keymap.set('', 'T', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
  end, { remap = true })
end
