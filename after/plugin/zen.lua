vim.keymap.set('n', '<leader>zz', function()
  require("zen-mode").toggle({
    window = {
      width = .75 -- width will be 85% of the editor width
    },
    plugins = {
      options = {
        enabled = true,
        wrap = true,
        linebreak = true,
        relativenumber = false,
        number = false,
      },
      alacritty = {
        enabled = true,
        font = "16",
      }
    }
  })
end, {})
