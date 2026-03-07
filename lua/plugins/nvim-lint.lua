return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("lint").linters_by_ft = {
            lua = { "selene" },
            python = { "pylint" },
            javascript = { "eslint_d" },
            c =  { "cpplint" },
            Makefile = { "checkmake" }
        }

        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            callback = function()
                require("lint").try_lint()
            end,
        })
    end
}

