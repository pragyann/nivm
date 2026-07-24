vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>co", vim.cmd.copen, { desc = "Open quickfix list" })
vim.keymap.set("n", "<leader>cc", vim.cmd.cclose, { desc = "Close quickfix list" })
vim.keymap.set("n", "<leader>tt", function()
    vim.cmd("belowright 12split | terminal")
    vim.cmd.startinsert()
end, { desc = "Open terminal split" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
