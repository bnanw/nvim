require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

local fterm = require("FTerm")

local btop = fterm:new({
    ft = 'fterm_btop',
    cmd = "bpytop"
})

 -- Use this to toggle btop in a floating terminal
vim.keymap.set('n', '<leader>b', function()
    btop:toggle()
end)

vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
