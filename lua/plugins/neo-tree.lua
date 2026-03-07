return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle<CR>")
		vim.keymap.set("n", "<C-m>", function()
			if vim.bo.filetype == "neo-tree" then
				vim.cmd("wincmd p")
			else
				vim.cmd("Neotree filesystem focus")
			end
		end, { desc = "Toggle Neo-Tree focus" })
	end,
}
