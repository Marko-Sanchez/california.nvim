local theme = require("california.theme")

local M = {}

function M.load(theme)
    if vim.g.colors_name then
        vim.cmd('hi clear')
    end

    vim.o.background = 'dark'
    vim.o.termguicolors = true
    vim.g.colors_name = 'california'
end

M.colorscheme = M.load(theme.setup())

return M
