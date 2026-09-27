return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            size = 15,
            direction = "horizontal",
        })
    end
}
