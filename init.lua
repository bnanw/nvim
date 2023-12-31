-- Using nvim-tree so disabling netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.fileencoding = "utf-8"
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.updatetime = 300
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.showmode = false

vim.g.mapleader = " "

-- disabling as not using netrw
-- vim.keymap.set("n", "<leader>e", "<cmd>:Lex 30<cr>", { silent = true })
vim.keymap.set("n", "<leader>e", "<cmd>:NvimTreeToggle<cr>", { silent = true })
vim.keymap.set("n", "<C-x>", "<cmd>:q<cr>", { silent = true })
vim.keymap.set("n", "<C-s>", "<cmd>:w<cr>", { silent = true })

-- navigate windows
vim.keymap.set("n", "<C-Left>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { silent = true })

-- Resize with arrows
vim.keymap.set("n", "<C-S-Left>", ":vertical resize -2<cr>", { silent = true })
vim.keymap.set("n", "<C-S-Right>", ":vertical resize +2<cr>", { silent = true })
vim.keymap.set("n", "<C-S-Up>", ":resize +2<cr>", { silent = true })
vim.keymap.set("n", "<C-S-Down>", ":resize -2<cr>", { silent = true })

-- Move text up and donw in visual mode
--vim.keymap.set("x", "<C-Down>", ":move '>+1<CR>gv-gv", { silent = true })
--vim.keymap.set("x", "<C-Up>", ":move '<-2<CR>gv-gv", { silent = true })

--lazygit
vim.keymap.set("n", "<leader>g", "<cmd>:LazyGit<cr>", { silent = true })

--bufferline shortcuts
vim.keymap.set("n", "<A-Left>", "<cmd>:BufferLineCyclePrev<cr>", { silent = true })
vim.keymap.set("n", "<A-Right>", "<cmd>:BufferLineCycleNext<cr>", { silent = true })
vim.keymap.set("n", "<leader>bd", ":<C-U>bprevious <bar> bdelete #<CR>", { silent = true })


require ("user")
