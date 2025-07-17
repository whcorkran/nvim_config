vim.cmd("set expandtab") --tab width
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " " -- leader
vim.g.maplocalleader = "\\"

require("config_master.keymaps")
require("config_master.manager")
require("config_master.plugins")

