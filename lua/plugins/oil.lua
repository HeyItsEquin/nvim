return {
    "stevearc/oil.nvim",
    config = function()
        local oil = require("oil")
        oil.setup({
            float = {
                win_options = {
                    winblend = 0
                }
            }
        })
        vim.keymap.set('n', '-', oil.toggle_float, {})
    end
}
