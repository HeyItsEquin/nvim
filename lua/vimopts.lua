-- Use (4) spaces instead of tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Theme
vim.cmd("colorscheme tokyonight")

-- Transparent Background
local transparent_bg = true

if transparent_bg == true then
    vim.cmd("highlight Normal ctermbg=None guibg=None")
    vim.cmd("highlight NormalNC ctermbg=None guibg=None")
    vim.cmd("highlight NormalFloat ctermbg=None guibg=None")
    vim.cmd("highlight VertSplit ctermbg=None guibg=None")
    vim.cmd("highlight WinSeparator ctermbg=None guibg=None")
    vim.cmd("highlight FoldColumn ctermbg=None guibg=None")
    vim.cmd("highlight SignColumn ctermbg=None guibg=None")
    vim.cmd("highlight NeoTreeNormal ctermbg=None guibg=None") 
    vim.cmd("highlight NeoTreeNormalNC ctermbg=None guibg=None")
end

-- Line Numbers
vim.cmd("set relativenumber")

-- Force clear screen before Neovim window closes
vim.api.nvim_create_autocmd("VimLeave", {
    callback = function()
        os.execute("clear")
    end
})
