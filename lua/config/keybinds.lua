vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>co", vim.cmd.copen, { desc = "Open quickfix list" })
vim.keymap.set("n", "<leader>cc", vim.cmd.cclose, { desc = "Close quickfix list" })
