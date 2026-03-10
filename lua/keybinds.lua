-- Leader Key
vim.g.mapleader = " "

vim.keymap.set("i", "<C-h>", "<C-W>", {}) -- Ctrl+Backspace to delete word
vim.keymap.set({ "i", "n" }, "<C-s>", "<cmd>w<CR>", {}) -- Ctrl+s to save current file

-- Ctrl+z to undo
vim.keymap.set("n", "<C-z>", "u", {})
vim.keymap.set("i", "<C-z>", function()
    vim.cmd("undo")
    vim.cmd("startinsert")
end, {})

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Multi-Window Navigation
vim.keymap.set("n", "<A-Up>", "<C-w>k", {})
vim.keymap.set("n", "<A-Down>", "<C-w>j", {})
vim.keymap.set("n", "<A-Left>", "<C-w>h", {})
vim.keymap.set("n", "<A-Right>", "<C-w>k", {})

-- Folding blocks
vim.keymap.set("n", "fa", "za", {}) -- fa doesn't exactly mean anything, but it's more comfortable to type
vim.keymap.set("n", "fo", "zo", {})
vim.keymap.set("n", "fc", "zc", {})

-- View LSP warnings and errors fullscreen
vim.keymap.set("n", "vd", vim.diagnostic.open_float, {})
