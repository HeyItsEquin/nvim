return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = { "gdscript", "c" },
	},
	config = function()
		local treesitter = require("nvim-treesitter")
		treesitter.install({
			"lua",
			"javascript",
		})
	end,
}
