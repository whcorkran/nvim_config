-- lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- options
local options = {}

-- plugins
local plugins = {  
    {
        "catppuccin/nvim", 
            name = "catppuccin", 
            priority = 1000
    }, 
    
    {
        'nvim-telescope/telescope.nvim', 
            tag = '0.1.8',
            dependencies = { 'nvim-lua/plenary.nvim' }
    },
    
    {
        "nvim-treesitter/nvim-treesitter", 
            branch = 'master', 
            lazy = false, 
            build = ":TSUpdate"
    },
    
    {
        "ThePrimeagen/harpoon", 
            branch = "harpoon2", 
            dependencies = { "nvim-lua/plenary.nvim", 
            "nvim-telescope/telescope.nvim" }
    },
    
    {
        "tpope/vim-fugitive"
    }, 
    {
        "mbbill/undotree"
    },
    {
        "kylechui/nvim-surround", 
            version = "*", -- latest stable
            event = "VeryLazy",
            config = function()
                require("nvim-surround").setup({})
            end
        }
}

-- BUILD
require("lazy").setup(plugins, options)
vim.cmd.colorscheme "catppuccin"


