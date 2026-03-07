return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
                python = { "black" },
                javascript = { "prettier" },
			},
		})

		vim.keymap.set("n", "<leader>gf", require("conform").format, {})
	end,
}
