vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- xplorer
vim.keymap.set("n", "<leader>ls", ":Ex<CR>", {silent = true, noremap=true})

-- git
vim.keymap.set("n", "<leader>gt", vim.cmd.Git);

-- sys clipboard copy/paste
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")

-- undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


