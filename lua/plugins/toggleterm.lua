return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            size = 10,
            direction = "horizontal",
        })
    end
}
