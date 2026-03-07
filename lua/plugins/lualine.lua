return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local options = {
			theme = "dracula",
		}
		require("lualine").setup(options)
	end,
}
