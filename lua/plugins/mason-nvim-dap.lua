---@type LazySpec
return {
  "jay-babu/mason-nvim-dap.nvim",
  config = function()
    require("better_escape").setup {
      timeout = vim.o.timeoutlen, -- after `timeout` passes, you can press the escape key and the plugin will ignore it
      default_mappings = true, -- setting this to false removes all the default mappings
      mappings = {
        -- mode = {
        --     firstkey = {
        --        secondkey = "Escape key", -- make a key press "Escape key"
        --        secondkey = false, -- disable a key
        --     },
        -- }
        --
        -- i for insert, other modes are the first letter too
        i = {
          -- map ii to exit insert mode
          i = {
            i = "<Esc>",
          },
          -- disable jj
          j = {
            j = false,
          },
        },
      },
    }
  end,
}
