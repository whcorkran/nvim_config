-- catppuccin
require("catppuccin").setup({
    flavour="mocha",
    transparent_background = false,
    integrations = {
        treesitter = true,
    },
})

function ColorMeMine(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)
end

ColorMeMine()
