-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'github/copilot.vim' },
  {
    'gelguy/wilder.nvim',
    config = function()
      local wilder = require 'wilder'
      wilder.setup { modes = { ':', '/', '?' } }
      wilder.set_option(
        'renderer',
        wilder.popupmenu_renderer {
          -- highlighter applies highlighting to the candidates
          highlighter = wilder.basic_highlighter(),
        }
      )
    end,
  },
  {
    'ellisonleao/glow.nvim',
    config = true,
    cmd = 'Glow',
  },
}
